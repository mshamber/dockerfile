#!/bin/sh
set -x
python --version
virtualenv scivmbase
source ~/scivmbase/bin/activate
pip install Django==1.5.4
django-admin.py startproject --template=https://github.com/pinax/pinax-project-account/zipball/master scivmcom
cd scivmcom
pip install -r requirements.txt
python manage.py syncdb && python manage.py runserver
