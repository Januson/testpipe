#!/bin/bash

if [ "$1" != "" ]; then
    VERSION="$1"
else
    echo "Candlepin version must be provided!"
    exit 1
fi

CANDLEPIN_PREFIX='candlepin-'
BRANCH_NAME=$VERSION

CANDLEPIN_VERSION=$(echo "$VERSION" | sed "s/$CANDLEPIN_PREFIX//")

# Create a new branch based on master
git checkout master
git checkout -b $BRANCH_NAME

# Update Candlepin version in pom.xml
VERSION=$(echo "$CANDLEPIN_VERSION" | sed "s/$CANDLEPIN_PREFIX//")
sed -i "s/\${candlepin.version.placeholder}/$VERSION/g" pom.xml

# Commit changes
git add pom.xml
git commit -m "Automatic commit - Target Candlepin build: '${VERSION}'"

# Create tag
HOSTED_VERSION=$(grep -oPm1 "(?<=<version>)[^<]+" <<< $(head -n 20 pom.xml))
TAG="${CANDLEPIN_VERSION}_${HOSTED_VERSION}"
git tag $TAG

git push --tags origin $BRANCH_NAME

exit 0