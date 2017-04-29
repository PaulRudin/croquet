from __future__ import absolute_import, unicode_literals

from .base import *

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

# SECURITY WARNING: keep the secret key used in production secret!  do
# not use this key - generate a different one and arrange for it to be
# available in the environment.
SECRET_KEY = '#rvqczn^h9^#vz)r-&wt^35)f2kowu2&*4g#pqr+uyr8ki873i'

DATABASES['default'] = DATABASES['devel']


EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'


try:
    from .local import *
except ImportError:
    pass
