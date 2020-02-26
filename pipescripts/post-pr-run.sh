#!/bin/bash
kubectl delete -f delete/
rm -f /workspace/source/delete/*
touch delete/placeholder.yml
git add .
git commit -m "post-pr-run-sh"
pwd
ls
