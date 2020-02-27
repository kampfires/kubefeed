#!/bin/bash

## Call kubedelete.sh to process kubectl deletes and garbagecollect deleted files
#./pipescripts/kubedelete.sh
#sleep 5

## Call installhub.sh to install github hub cli utility - mergetopr.sh requires hub be installed first
#./pipescripts/installhub.sh
#sleep 5

## Call mergetopr.sh to merge changes from kubedelete into pr
#./pipescripts/mergetopr.sh
#sleep 5

mkdir /workspace/pr$PULL_NUMBER
git clone $SOURCE_URL
cd $APP_NAME
CURRENT_BRANCH=$(curl -s https://api.github.com/repos/$REPO_OWNER/$APP_NAME/pulls/$PULL_NUMBER |  jq -r '.head.ref')
echo "CURRENT_BRANCH VALUE IS:"
echo $CURRENT_BRANCH
git fetch origin $CURRENT_BRANCH
git checkout $CURRENT_BRANCH
touch test.503
git add .
git commit -m "pr$PULLNUMBER"
git push origin $CURRENT_BRANCH