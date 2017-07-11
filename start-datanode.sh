#! /bin/bash

until kinit -kt /var/keytabs/hdfs.keytab hdfs/nn.default.svc.cluster.local; do sleep 2; done

echo "KDC is up and ready to go... starting up"

kdestroy

hdfs datanode