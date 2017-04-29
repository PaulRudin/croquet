import os

from .base import *

secrets_file = os.getenv('SECRETS_FILE')
load_dotenv(secrets_file)

ALLOWED_HOSTS = ['*']

DEBUG = False

COMPRESS_ENABLED = True

DATABASES['default'] = DATABASES['prod']

SECRET_KEY = os.getenv('SECRET_KEY')

try:
    from .local import *
except ImportError:
    pass
