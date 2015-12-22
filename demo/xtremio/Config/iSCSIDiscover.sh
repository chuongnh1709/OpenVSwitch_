# Copyright Hybrid Logic Ltd.
# Copyright 2015 EMC Corporation
# See LICENSE file for details.

#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
        echo "iSCSI Target IP/Name Not Provided"
        exit 1
fi

iscsiadm -m discoverydb -t st -p $1:3260 --discover
