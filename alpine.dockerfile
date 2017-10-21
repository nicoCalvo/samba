FROM alpine

RUN apk update && apk add cifs-utils
COPY ./alpine-entrypoint.sh /
ENTRYPOINT sh alpine-entrypoint.sh
