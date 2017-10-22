#!/bin/bash

path="tingtingths/"
name="dev-json-server"
tag="$(cat VERSION)"

echo "Building $path$name:$tag ..."

docker build -t $path$name:$tag .
