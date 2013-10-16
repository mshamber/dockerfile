#!/bin/bash
set -x

export LANG="en_US.UTF-8"
BASEDIR=/opt
mkdir -p $BASEDIR
cd $BASEDIR
virtualenv scivm-env
source $BASEDIR/scivm-env/bin/activate
pip install Django==1.5.4
django-admin.py startproject --template=https://github.com/pinax/pinax-project-account/zipball/master scivmcom
cd scivmcom
pip install -r requirements.txt
python manage.py syncdb && python manage.py runserver
