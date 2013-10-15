python --version
mkvirtualenv scivm.com
pip install Django==1.5.4
django-admin.py startproject --template=https://github.com/pinax/pinax-project-account/zipball/master scivm.com
cd scivm.com
pip install -r requirements.txt
python manage.py syncdb && python manage.py runserver
