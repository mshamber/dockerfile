#!/bin/sh
set -x
python --version
virtualenv scivmcom
pip install Django==1.5.4
django-admin.py startproject --template=https://github.com/pinax/pinax-project-account/zipball/master scivmcom2
find scivmcom
find scivmcom2
cd scivmcom2
pip install -r requirements.txt
python manage.py syncdb && python manage.py runserver
