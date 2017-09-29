#!/bin/bash

#
# copies necessary files and builds docker image
#

cp ../worldwind-geoserver/target/geoserver.war .
if [ $? -ne 0 ]; then
    echo geoserver.war copy failed, exiting
    exit -1
fi

echo Prerequsits completed, now building the image

docker image build .

