#!/bin/bash

PORT=3000
DOCID="id"
DOC=$(pwd)/dummy.json

docker run -td --name dev-json-server \
    -p $PORT:3000 \
    --env ID=$DOCID \
    -v $DOC:/data/db.json \
    tingtingths/dev-json-server:$(cat VERSION)
