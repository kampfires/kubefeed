#!/bin/bash
mkdir ../hubtemp
export MYDIR=$(pwd)
cd ../hubtemp
wget https://github.com/github/hub/releases/download/v2.14.1/hub-linux-amd64-2.14.1.tgz
tar xzf hub-linux-amd64-2.14.1.tgz 
./hub-linux-amd64-2.14.1/install
cd $MYDIR