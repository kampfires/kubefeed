#!/bin/bash
## Call kubedelete.sh to process kubectl deletes and garbagecollect deleted files
./kubedelete.sh
sleep 5
## Call installhub.sh to install github hub cli utility - mergetopr.sh requires hub be installed first
./installhub.sh
sleep 5

## Call mergetopr.sh to merge changes from kubedelete into pr
./mergetopr.sh
sleep 5