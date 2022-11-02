#!/bin/bash

set -eo pipefail

xcodebuild -exportArchive \
            -allowProvisioningUpdates \
            -archivePath $PWD/build/muredan.ios.xcarchive \
            -exportOptionsPlist muredan.ios/ExportOptions.plist \
            -exportPath $PWD/build