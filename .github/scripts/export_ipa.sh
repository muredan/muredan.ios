#!/bin/bash

set -eo pipefail

xcodebuild -archivePath $PWD/build/muredan.ios.xcarchive \
            -exportPath $PWD/build \
            -allowProvisioningUpdates \
            -exportArchive | xcpretty
