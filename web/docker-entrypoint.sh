#!/bin/bash

echo "Collect static files"
python manage.py collectstatic --noinput

# Apply database migrations
echo "Apply database migrations"
python manage.py migrate

# Start server
#python manage.py runserver 0.0.0.0:8000
/usr/local/bin/gunicorn bookmarks.wsgi:application -w 2 -b :8000