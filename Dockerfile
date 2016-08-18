FROM python:3.5.2

RUN apt-get update
RUN pip install --upgrade pip
RUN mkdir -p /usr/src/app
COPY dev_requirements.txt /usr/src/app/dev_requirements.txt
WORKDIR /usr/src/app
RUN pip install --no-cache-dir -r dev_requirements.txt 
RUN pip install --no-cache-dir ipdb ipython pytest pytest-cov pytest-sugar
COPY . /usr/src/app/
RUN pip install --no-cache-dir -e .
