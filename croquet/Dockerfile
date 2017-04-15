FROM python:3.6-onbuild
CMD ["gunicorn","-b","0.0.0.0:8000","croquet.wsgi:application"]
