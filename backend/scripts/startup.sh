#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT ngngn_1308.wsgi:application
