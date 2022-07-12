import os

class Config:
    # database options
    ALCHEMICAL_DATABASE_URL = os.environ.get('DATABASE_URL') or \
        'sqlite:///' + os.path.join(basedir, 'db.sqlite')
    ALCHEMICAL_ENGINE_OPTIONS = {'echo': as_bool(os.environ.get('SQL_ECHO'))}


    # API documentation
    APIFAIRY_TITLE = 'Microblog API'
    APIFAIRY_VERSION = '1.0'
    APIFAIRY_UI = os.environ.get('DOCS_UI', 'elements')

