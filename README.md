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

or, if your docker vm got stuck somehow, try...

    dvm reload

also, you can check your docker vm is ok and running, via...

    docker info

build, using...

    ./build.sh

## using the image

to repo sync...

    docker run -t -i -w=/build couchbase-builder repo sync

to make...

    docker run -t -i -w=/build couchbase-builder make
