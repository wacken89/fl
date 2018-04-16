#!/bin/bash

rm -rf /tmp/mongodump && mkdir /tmp/mongodump
docker run --network="mongo_internal" -it --rm --link mongo_mongo_1:mongo -v /tmp/mongodump:/tmp mongo bash -c 'mongodump -v --host mongo --db '$1' --out=/tmp'
tar -cvf $2 /tmp/mongodump
rm -rf /tmp/mongodump