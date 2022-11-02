#!/bin/bash

set -eo pipefail

xcodebuild -exportArchive \
            -archivePath $PWD/build/muredan.ios.xcarchive \
            -exportOptionsPlist muredan.ios/ExportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates
