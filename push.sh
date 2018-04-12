#!/bin/sh

hugo

mv docs temp

mv public docs

mv temp/CNAME docs/CNAME

cp google2bf9664a4c4b846e.html docs/

rm -rf temp

git add -A

if [ ! -z $1 ];
  then message=$1
else
  message="default commit message"
fi
echo $message
git commit -m "+$message+"

git push
