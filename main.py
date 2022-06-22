#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json
#import requests
#from requests_ntlm import HttpNtlmAuth
#import logging
import psycopg2
from psycopg2 import extensions
from flask import Flask
from flask_restful import reqparse, abort, Api, Resource
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

def abort_if_doesnt_exist(id,object_name):
    abort(404, message="{} c id {} doesn't exist".format(object_name,id))

app = Flask(__name__)
api = Api(app)
#logging.basicConfig(level=logging.DEBUG)
class vehicleclasseslist(Resource):
    def get(self):
            sql_str = 'SELECT "Name", "id" FROM public.vehicleclass '
            res = curs.execute(sql_str)
        return res

api.add_resource(vehicleclasseslist, '/vehicleclasses')
if __name__ == '__main__':
    app.run(debug=True)
