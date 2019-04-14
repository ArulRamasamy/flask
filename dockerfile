FROM python:3.8.0a3-alpine3.9

RUN mkdir /app

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

LABEL Maintainer="Arul Ramasamy  <Arul.Rama25@gmail.com>" \
        Version="0.1"

CMD flask run --host=0.0.0.0 --port=5000
    





