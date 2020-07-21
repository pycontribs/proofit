FROM python:3.8-alpine
COPY . /tmp/src
RUN \
    apk update && \
    apk add gcc git && \
    pip3 install /tmp/src && \
    python3 -c "import proofit" && \
    python3 -m proofit

ENTRYPOINT ["proofit"]
