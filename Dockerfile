FROM python:3.10-alpine

WORKDIR /kodekloud-twele-factor-app

COPY requirements.txt /kodekloud-twele-factor-app

RUN apk update && \
    apk add curl && \
    pip install -r requirements.txt --no-cache-dir

COPY . /kodekloud-twele-factor-app

CMD python app.py