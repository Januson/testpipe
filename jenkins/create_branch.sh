#!/bin/bash

echo $(git status)
git checkout master

echo $(git status)
git checkout -b ${params.version}
echo $(git status)

VERSION="candlepin-3.6.99"
CANDLEPIN_PREFIX = 'candlepin-'
CANDLEPIN_VERSION=$(echo "$VERSION" | sed "s/$CANDLEPIN_PREFIX//")
sed -i "s/${candlepin.version.placeholder}/$CANDLEPIN_VERSION/g" pom.xml