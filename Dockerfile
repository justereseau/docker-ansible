FROM alpine:latest

ENTRYPOINT ["python", "-m", "exporter"]

RUN apk add --update --no-cache make python3 python3-dev gcc musl-dev libffi-dev libressl-dev
  && pip3 install --upgrade pip setuptools

ADD ./exporter /exporter
