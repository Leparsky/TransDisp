from flask import Flask, redirect, url_for, request
from alchemical.flask import Alchemical
from flask_migrate import Migrate
from flask_marshmallow import Marshmallow
from flask_cors import CORS
from flask_mail import Mail
from apifairy import APIFairy
from config import Config

db = Alchemical()
migrate = Migrate()
ma = Marshmallow()
apifairy = APIFairy()

def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(config_class)