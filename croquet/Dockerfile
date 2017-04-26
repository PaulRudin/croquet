FROM python:3.6-onbuild

RUN /usr/src/app/manage.py collectstatic --noinput

CMD ["gunicorn","--access-logfile","-","--error-logfile","-","--capture-output","-b",":8000","--forwarded-allow-ips","*","croquet.wsgi:application"]
