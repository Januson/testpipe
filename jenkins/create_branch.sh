#!/bin/bash

if [ "$1" != "" ]; then
    VERSION="$1"
else
    echo "Candlepin version must be provided!"
    exit 1
fi

CANDLEPIN_PREFIX='candlepin-'

CANDLEPIN_VERSION=$(echo "$VERSION" | sed "s/$CANDLEPIN_PREFIX//")

git checkout master
git checkout -b $CANDLEPIN_VERSION

VERSION=$(echo "$CANDLEPIN_VERSION" | sed "s/$CANDLEPIN_PREFIX//")
sed -i "s/\${candlepin.version.placeholder}/$VERSION/g" pom.xml

git add pom.xml
git commit -m "Automatic commit"

HOSTED_VERSION=$(grep -oPm1 "(?<=<version>)[^<]+" <<< $(head -n 20 pom.xml))
TAG="${CANDLEPIN_VERSION}_${HOSTED_VERSION}"
git tag $TAG

BRANCH_NAME=$VERSION
git push --follow-tags origin $BRANCH_NAME
