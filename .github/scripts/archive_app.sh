#!/bin/bash

set -eo pipefail

# create variables
WORKSPACE=muredan.ios.xcworkspace
SCHEME=muredan.ios\ "$CONFIGURATION"
ARCHIVE_PATH=build/muredan.ios

# buiild & archive
xcodebuild -workspace $WORKSPACE \
            -allowProvisioningUpdates \
            -scheme muredan.ios\ "$CONFIGURATION" \
            -sdk iphoneos \
            -derivedDataPath build/DerivedData \
            -configuration Release\ "$CONFIGURATION" \
            -archivePath $ARCHIVE_PATH archive
