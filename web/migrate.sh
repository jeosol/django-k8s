#!/bin/bash
SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"info@thedibia.com"}
cd /app/

# prevent creating user multiple types, so we add "|| true" so it doesn't fail and create 
# errors
# migrations need to have access to the database

/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true