FROM python:3.10.4-alpine

run pip3 install django

run pip3 install markdown

WORKDIR /usr/src/app

copy . .

WORKDIR ./project

CMD ["python3", "manage.py", "runserver", "0:8000"]

EXPOSE 8000
