#!/bin/bash
cd /workspace/source
hub pr $BUILD_NUMBER
git add .
git commit -m "post-pr-run-sh"
PRBRANCH='pr/'$BUILD_NUMBER
git push origin $PRBRANCH