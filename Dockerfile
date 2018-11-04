FROM python:2
ENV ribbit_env 1
ADD ./app /app/
WORKDIR /app
RUN pip install -r requirements.txt
RUN python manage.py syncdb --noinput
RUN python manage.py migrate ribbit_app
CMD python manage.py runserver
