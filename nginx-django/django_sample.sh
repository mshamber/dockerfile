#!/bin/bash
set -x

export LANG="en_US.UTF-8"
BASEDIR=/opt
mkdir -p $BASEDIR
cd $BASEDIR
virtualenv scivm-env
source $BASEDIR/scivm-env/bin/activate
pip install Django==1.5.4
django-admin.py startproject scivmcom
