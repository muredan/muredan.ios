#!/bin/bash

set -eo pipefail

# create variables
ARCHIVE_PATH=build/muredan.ios.xcarchive
EXPORT_OPTIONS_PATH=muredan.ios/ExportOptions.plist
EXPORT_PATH=build

# export ipa
xcodebuild -exportArchive \
            -allowProvisioningUpdates \
            -archivePath $ARCHIVE_PATH \
            -exportOptionsPlist $EXPORT_OPTIONS_PATH \
            -exportPath $EXPORT_PATH