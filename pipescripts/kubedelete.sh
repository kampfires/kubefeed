#!/bin/bash
kubectl delete -f delete/
rm -f /workspace/source/delete/*
touch delete/placeholder.yml