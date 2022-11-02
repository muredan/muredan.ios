#!/bin/bash

set -eo pipefail

# create variables
WORKSPACE=muredan.ios.xcworkspace
SCHEME=muredan.ios
ARCHIVE_PATH=$PWD/build/muredan.ios.xcarchive

# buiild & archive
xcodebuild -workspace $WORKSPACE \
            -scheme $SCHEME \
            -sdk iphoneos \
            -configuration Release \
            # -archivePath $ARCHIVE_PATH \
            # clean archive | xcpretty
