FROM python:3.6 as build

LABEL description="kowala docs build"
LABEL version="1.0"
LABEL maintainer "dev@kowala.tech"

USER root
WORKDIR /root

COPY ./ /root/

RUN pip install mkdocs && \
	pip install --user -r requirements.txt
