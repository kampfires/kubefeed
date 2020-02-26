#!/bin/bash
git clone https://github.com/kampfires/kubefeed.git -b $BRANCH_NAME
cd kubefeed
kubectl delete -f delete/
rm delete/*
