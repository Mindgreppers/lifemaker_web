#!/bin/sh

hugo

rm -r docs

mv public docs

cp google2bf9664a4c4b846e.html docs/

git add -A

if [ ! -z $1 ];
  then message=$1
else
  message="default commit message"
fi
echo $message
git commit -m "+$message+"

git push
