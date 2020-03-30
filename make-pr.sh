#!/bin/bash

if [[ ! $1 ]];then
  echo "Missing PR info"
  exit 1
fi


addAndCommit () {
  git add .
  git commit -m "Final test PR"

  branchNanme="PR-$1"
  git checkout -b $branchNanme
  git push origin $branchNanme
  hub pull-request --copy -m "This is $branchNanme"
}

addAndCommit "$1"
