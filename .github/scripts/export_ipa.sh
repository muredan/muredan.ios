#!/bin/bash

set -eo pipefail

# export ipa
xcodebuild -exportArchive \
            -allowProvisioningUpdates \
            -archivePath $PWD/build/muredan.ios.xcarchive \
            -exportOptionsPlist muredan.ios/ExportOptions.plist \
            -exportPath $PWD/build