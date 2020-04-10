FROM alpine:latest

COPY requirements.txt .

RUN apk add --update --no-cache make python3 python3-dev gcc musl-dev libffi-dev libressl-dev git
RUN pip3 install --upgrade pip setuptools
RUN pip3 install --requirement ./requirements.txt
