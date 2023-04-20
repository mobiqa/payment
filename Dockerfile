FROM      python:3.6
RUN       mkdir /app
WORKDIR   /app
COPY      payment.py payment.ini rabbitmq.py requirements.txt /app/
RUN       ["uwsgi",  "--ini", "payment.ini"]