FROM python:2
ENV ribbit_env 1
ADD ./app /app/
WORKDIR /app
RUN pip2 install -r requirements.txt
RUN python2 manage.py syncdb --noinput
RUN python2 manage.py migrate ribbit_app
CMD python2 manage.py runserver
