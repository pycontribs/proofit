FROM python:3.8-alpine AS compile-image
RUN apk update
RUN apk add gcc git

COPY . /src
RUN pip3 install --no-warn-script-location --user src/

FROM python:3.8-alpine AS build-image

COPY --from=compile-image /root/.local /root/.local
# Make sure scripts in .local are usable:
ENV PATH=/root/.local/bin:$PATH

ENTRYPOINT ["proofit"]
CMD ['proofit']
