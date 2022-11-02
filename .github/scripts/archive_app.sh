#!/bin/bash

set -eo pipefail

# create variables
WORKSPACE=muredan.ios.xcworkspace
SCHEME=muredan.ios
ARCHIVE_PATH=build/muredan.ios

# buiild & archive
xcodebuild -workspace $WORKSPACE \
            -allowProvisioningUpdates \
            -scheme $SCHEME \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            # -derivedDataPath build/DerivedData
            # -archivePath $ARCHIVE_PATH archive
