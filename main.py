#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json
#import requests
#from requests_ntlm import HttpNtlmAuth
#import logging
import psycopg2
from psycopg2 import extensions
from flask import Flask, jsonify, Response
import flask
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
class vehicleClassesList(Resource):
    def get(self):
        sql_str = 'SELECT "Name", "id" FROM public.VehicleClass '
        curs.execute(sql_str)
        res = curs.fetchall()
        return res

vehicle_parser = reqparse.RequestParser()
vehicle_parser.add_argument('id', type=int)
vehicle_parser.add_argument('Name', type=str)
vehicle_parser.add_argument('PassengerCapacity', type=int)
vehicle_parser.add_argument('VehicleClass', type=int)
vehicle_parser.add_argument('Active', type=bool)
vehicle_parser.add_argument('Phone', type=str)


class VehiclesList(Resource):
    def get(self):
        sql_str = 'SELECT id, "Name", "PassengerCapacity", "VehicleClass", "Active", "Phone" FROM public."Vehicle"'
        curs.execute(sql_str)
        res = curs.fetchall()
        themes = []
        for (id, name, passengerCapacity, vehicleClass, active, phone) in res:
            themes.append({"id": id, "Name": name,"PassengerCapacity": passengerCapacity, "VehicleClass": vehicleClass, "Active": active, "Phone": phone})
        return themes
    def post(self):
        vehicle_args = vehicle_parser.parse_args()
        sql_str = 'INSERT INTO public."Vehicle" ("Name", "PassengerCapacity", "VehicleClass", "Active", "Phone") VALUES( \'{}\', {}, {},{}, \'{}\');'.format(
                    vehicle_args["Name"], vehicle_args["PassengerCapacity"], vehicle_args["VehicleClass"], vehicle_args["Active"], vehicle_args["Phone"])
        curs.execute(sql_str)

        return {}, 201


class Vehicle(Resource):
    def get(self, id):
        sql_str = 'SELECT id, "Name", "PassengerCapacity", "VehicleClass", "Active", "Phone" FROM public."Vehicle" where id={}'.format(id)
        curs.execute(sql_str)
        if curs.rowcount == 0:
            abort(404, message="Vehicle {} doesn't exist".format(id))
        res = curs.fetchone()
        return res

    def delete(self, id):
        sql_str = 'DELETE  FROM public."Vehicle" where id={}'.format(id)
        curs.execute(sql_str)
        return '', 204

    def put(self, id):
        vehicle_args = vehicle_parser.parse_args()
        sql_str = 'UPDATE public."Vehicle" SET "Name"=\'{}\', "PassengerCapacity"={}, "VehicleClass"={}, "Active"={}, "Phone"=\'{}\' WHERE id={}'.format(
            vehicle_args["Name"], vehicle_args["PassengerCapacity"], vehicle_args["VehicleClass"], vehicle_args["Active"], vehicle_args["Phone"],id)
        curs.execute(sql_str)
        return {}, 201



def to_json(data):
    return json.dumps(data) + "\n"


def resp(code, data):
    return Response(
        status=code,
        mimetype="application/json",
        response=to_json(data)
    )

@app.route('/vehicles1', methods=['GET'])
def get_themes():
    sql_str = 'SELECT id, "Name", "PassengerCapacity", "VehicleClass", "Active", "Phone" FROM public."Vehicle"'
    curs.execute(sql_str)
    res = curs.fetchall()
    themes = []
    for (id, name, passengerCapacity, vehicleClass, active, phone) in res:
        themes.append({"id": id, "PassengerCapacity": passengerCapacity, "VehicleClass": vehicleClass, "Active": active,
                       "Phone": phone})
    return resp(200, {"themes": themes})


api.add_resource(vehicleClassesList, '/vehicleclasses')
api.add_resource(VehiclesList, '/vehicles')
api.add_resource(Vehicle, '/vehicles/<id>')
if __name__ == '__main__':
    app.run(debug=True)
