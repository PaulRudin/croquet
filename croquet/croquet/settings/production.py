import os

from .base import *

ALLOWED_HOSTS = ['*']

DEBUG = False

COMPRESS_ENABLED = True

SECRET_KEY = os.getenv('SECRET_KEY')

try:
    from .local import *
except ImportError:
    pass
