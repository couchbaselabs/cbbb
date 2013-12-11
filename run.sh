#!/bin/sh
GIT_STORAGE=/tmp/build-git-store
mkdir -p $GIT_STORAGE
## Shared git storage
docker run -t -i -v $GIT_STORAGE:/build/.repo/projects couchbase-builder /bin/bash
