#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
gunicorn yourdjangoproject.wsgi:application
-m pip install --upgrade pip
