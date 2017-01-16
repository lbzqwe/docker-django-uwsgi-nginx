FROM python:3.5

# Add Environment Variables
ENV PYTHONUNBUFFERED 1
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ADD requirements.txt /usr/src/app
RUN pip install -r /usr/src/apprequirements.txt
ADD . /usr/src/app

ENV MYSQL_USER admin
ENV MYSQL_DATABASE test
ENV MYSQL_ROOT_PASSWORD admin
ENV MYSQL_PASSWORD password
ENV MYSQL_CONTAINER_NAME mysql
ENV MYSQL_PORT 3306


