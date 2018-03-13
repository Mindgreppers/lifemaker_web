#!/bin/sh

hugo

rm -r docs

mv public docs

git add -A

if [ ! -z $1 ];
  then message=$1
else
  message="default commit message"
fi
echo $message
git commit -m "+$message+"

git push
