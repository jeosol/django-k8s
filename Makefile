APP_DIR=./web


install-packages:
	pip install -r ${APP_DIR}/requirements.txt


compose-build:
	docker compose up --build

compose:
	docker compose up -d	

# to check environmental variable settings while server is running
# 1) python manage.py shell
# 2) from django.conf import settings
# 3) print(settings.DB_IS_AVAIL)	
# docker-compose helps you test locally
