#!/bin/bash

set -eo pipefail

xcodebuild -archivePath $PWD/build/muredan.ios.xcarchive \
            -exportOptionsPlist muredan.ios/exportOptions.plist \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
