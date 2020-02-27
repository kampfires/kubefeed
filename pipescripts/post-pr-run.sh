#!/bin/bash
kubectl delete -f delete/
rm -f /workspace/source/delete/*
touch delete/placeholder.yml
git add .
git commit -m "post-pr-run-sh"
PULL_REFS=$PULL_REFS","$BUILD_NUMBER":"$(git log --format=format:%H -1)
jx step git merge
