#!/bin/bash
kubectl delete -f delete/
rm -f /workspace/source/delete/*
git add .
git commit -m "post-pr-run-sh"
