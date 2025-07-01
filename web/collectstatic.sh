#!/bin/bash

cd /app/

# prevent creating user multiple types, so we add "|| true" so it doesn't fail and create 
# errors
# migrations need to have access to the database

/opt/venv/bin/python manage.py collectstatic --noinput
