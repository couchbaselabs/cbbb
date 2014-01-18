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

    (you can also commit the container to an image and tag the image for later access)
    docker ps -a
    (find your last CONTAINER_ID, so we can commit it as an image and tag it)
    docker commit CONTAINER_ID
    docker tag IMAGE_ID couchbase-builder-synced

to make...

    docker run -t -i -w=/build couchbase-builder-synced make

    (you can also commit the container to an image and tag the image for later access)
    docker ps -a
    (find your last CONTAINER_ID, so we can commit it as an image and tag it)
    docker commit CONTAINER_ID
    docker tag IMAGE_ID couchbase-built

to do a cluster-run with 2 hops of port forwarding...

    dvm ssh -- -L 9000:localhost:9000
    docker run -p=9000:9000 -t -i -rm couchbase-built bash
    > cd /build/ns_server/
    > ./cluster_run
    point your browser at http://localhost:9000

if you want to restart from step zero, start your virtualbox UI and
blow away the dvm VM (which was created for you when you first ran
"dvm up").

