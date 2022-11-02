#!/bin/bash

set -eo pipefail

# create variables
WORKSPACE=muredan.ios.xcworkspace
SCHEME=muredan.ios
ARCHIVE_PATH=DerivedData/Archive/muredan.ios.xcarchive

# buiild & archive
xcodebuild -workspace $WORKSPACE \
            -scheme $SCHEME \
            -sdk iphoneos \
            -configuration Release \
            -derivatedDataPath DerivedData
            -archivePath ARCHIVE_PATH \
            clean archive | xcpretty
