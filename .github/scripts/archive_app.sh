#!/bin/bash

set -eo pipefail

# create variables
WORKSPACE=muredan.ios.xcworkspace
SCHEME=muredan.ios

# buiild & archive
xcodebuild -workspace $WORKSPACE \
            -scheme $SCHEME \
            -sdk iphoneos \
            -configuration Release \
            -allowProvisioningUpdates \
            -archivePath $PWD/build/muredan.ios.xcarchive \
            clean archive | xcpretty
