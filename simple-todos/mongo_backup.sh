#!/bin/bash

NETOWRK='simpletodos_internal'
MONGO_CONTAINER='simpletodos_mongo_1'

rm -rf /tmp/mongodump && mkdir /tmp/mongodump
docker run --network="$NETOWRK" -it --rm --link "$MONGO_CONTAINER":mongo -v /tmp/mongodump:/tmp mongo bash -c 'mongodump -v --host mongo --db '$1' --out=/tmp'
tar -cvf $2 /tmp/mongodump
rm -rf /tmp/mongodump