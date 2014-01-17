# couchbasebuilderbuilder

## prereq's

for OSX...
- virtualbox
- vagrantup.com
- xcode
- homebrew / http://brew.sh
- dvm / http://fnichol.github.io/dvm
- put this into your ~/.cshrc...

    eval $(dvm env)

## building the image

for OSX...

start virtualbox with your docker vm, using...

    dvm up

check your docker vm is running, via...

    docker info

build, using...

    ./build.sh

## using the image

to get a shell...

    docker run -t -i -rm couchbase-builder /bin/bash

once you have a shell, you can...

    > cd /build
    > repo sync
    > make

