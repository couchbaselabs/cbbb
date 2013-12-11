#!/bin/sh
cpp Dockerfile.in > Dockerfile
docker build -t couchbase-builder .
