#!/bin/bash

set -eo pipefail

# buiild & archive
xcodebuild -workspace muredan.ios.xcworkspace \
            -allowProvisioningUpdates \
            -scheme muredan.ios \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/muredan.ios.xcarchive archive
