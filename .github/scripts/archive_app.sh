#!/bin/bash

set -eo pipefail

# create variables
WORKSPACE=muredan.ios.xcworkspace
SCHEME=muredan.ios
ARCHIVE_PATH=build/muredan.ios

# buiild & archive
xcodebuild -workspace $WORKSPACE \
            -scheme $SCHEME \
            -sdk iphoneos \
            -destination "generic/platform=iOS" \
            -configuration Release build CODE_SIGNING_ALLOWED=NO
            # -archivePath $ARCHIVE_PATH archive \
            # -allowProvisioningUpdates \
            # -derivedDataPath build/DerivedData \
            
