#!/bin/bash
kubectl delete -f delete/
rm -f delete/*
git add .
git commit -m "post-pr-run-sh"
