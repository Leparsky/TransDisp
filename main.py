#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json
#import requests
#from requests_ntlm import HttpNtlmAuth
#import logging
import psycopg2
from psycopg2 import extensions
from Flask import flask
from datetime import date

#current_year = date.today().year
#CREATE USER transdisp WITH PASSWORD 'transdisppwd';
db_config = {
    "host": f"127.0.0.1",
    f"port": f"5432",
    f"dbname": f"transdispdb",
    f"user": f"transdisp",
    f"password": f"transdisppwd"# Заменить пароль на пароль от базы
}
DSN = " ".join("{0}='{1}'".format(k, v) for k, v in db_config.items())
conn = psycopg2.connect(DSN)

conn.set_isolation_level(extensions.ISOLATION_LEVEL_AUTOCOMMIT)
curs = conn.cursor()

app = flask.Flask(__name__)
#logging.basicConfig(level=logging.DEBUG)

# URL приложения
root = 'http://tnnc-pir-app/test-api'

# словарь    Имя таблицы         эндпоинт в API, откуда можно забрать данные
endpoints = {"contracts"        : f'{root}/view-contracts',
             "contract_stages"  : f'{root}/view-contract-stages',
             "tem_plan"         : f'{root}/view-tem-plan-sums?year={current_year}',
             "customers"        : f'{root}/customers',
             "performers"       : f'{root}/performers',
             "organizations"    : f'{root}/organizations',
        'busines_plan_versions' : f'{root}/view-busines-plan-versions'
             }

# для авторизации в приложении, чтобы получить данные
win_auth = HttpNtlmAuth('anignatyuk', '')# Заменить пароль на пароль пользователя

# Функция получения данных с эндпоинта
def get_endpoint_data(endpoint_url):
    result = requests.get(endpoint_url, auth=win_auth)
    # Декодируем результаты в utf-8, чтобы избавится от
    # русских строк, закодированных escape последовательностями
    # вида \xd0\x9e\xd1\x82\xd0\xb4\xd0\xb5\xd0\xbb
    decoded_result = result.content.decode('utf-8')
    # преобразуем в json
    json_result = json.loads(decoded_result)

    return json_result, decoded_result


def create_table_and_view(table_name,endpoint):
    try:
        # запрашиваем данные с эндпоинта, соответствущего таблице
        json_result, decoded_result = get_endpoint_data(endpoint)
        if json_result:
            # Создаём таблицу, если нет в базе
            create_table_query = f"create table if not exists {table_name}_raw_json (id serial primary key, uploaded timestamp default now(), json_data json)"
            curs.execute(create_table_query)
            conn.commit()

            # Динамически создаём view, для отображения данных из json
            create_view_query_prefix = f"create or replace view  {table_name} as  " \
                                f"SELECT * FROM json_to_recordset(( SELECT r.json_data FROM {table_name}_raw_json r WHERE r.id = (( SELECT max({table_name}_raw_json.id) AS max " \
                                f"FROM {table_name}_raw_json)))) "

            s = '" text, "'.join(json_result[0].keys())
            s = '"'+s+'" text'
            create_view_query_postfix =f"x({s});"
            create_view_query = create_view_query_prefix+create_view_query_postfix
            curs.execute(create_view_query)
            conn.commit()
            # добавляем данные в таблицу
            curs.execute(f"insert into {table_name}_raw_json (json_data) select ($${decoded_result}$$) where not exists ( select 1 from {table_name}_raw_json where"
                         f" json_data::text = $${decoded_result}$$);")
            conn.commit()
        else:
            print(f'{endpoint} не вернул данных')
    except Exception as e:
        print(e)
        conn.rollback()

# Функция обработки словаря с таблицами и эндоинтами
def process_endpoints():
    # перебираем по очереди каждую запись словаря и для каждой записи создаём таблицу и view
    for key,value in endpoints.items():
        print(key,value)
        create_table_and_view(key, value)

    # Получаем ID актуальной версии бизнес плана
    sql_str = 'select "BusinesPlanID" from busines_plan_versions where "IsActual"::boolean'
    curs.execute(sql_str)
    bp_id = curs.fetchone()[0]

    # генерируем url эндпоинта для получения бизнес плана, на основании
    busines_plan_endpoint_url= f'{root}/view-busines-plan-sums?version={bp_id}&year={current_year}'
    print('busines_plan', busines_plan_endpoint_url)
    create_table_and_view('busines_plan', busines_plan_endpoint_url)

if __name__ == '__main__':
    print('Starting')
    process_endpoints()
    print('Completed')
    conn.close()
