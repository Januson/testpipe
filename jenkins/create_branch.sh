#!/bin/bash

CANDLEPIN_VERSION="candlepin-3.6.99"

echo $(git status)
git checkout master

echo $(git status)
git checkout -b $CANDLEPIN_VERSION
echo $(git status)

CANDLEPIN_PREFIX='candlepin-'
VERSION=$(echo "$CANDLEPIN_VERSION" | sed "s/$CANDLEPIN_PREFIX//")
sed -i "s/\${candlepin.version.placeholder}/$VERSION/g" pom.xml

git add pom.xml
git commit -m "Automatic commit"
git push origin $CANDLEPIN_VERSION
