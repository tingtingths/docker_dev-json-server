FROM node:8.7.0-slim

RUN npm install -g json-server

VOLUME /data

EXPOSE 3000

ADD entrypoint.sh /entrypoint.sh

# default
ENV ID="id"

RUN chmod +x /entrypoint.sh

ENTRYPOINT /entrypoint.sh

