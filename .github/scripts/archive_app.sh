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
            -archivePath $ARCHIVE_PATH archive \
            -allowProvisioningUpdates \
            # -derivedDataPath build/DerivedData \
            
