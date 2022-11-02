#!/bin/bash

set -eo pipefail

xcodebuild -workspace muredan.ios.xcworkspace \
            -scheme muredan.ios\ iOS \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -archivePath $PWD/build/muredan.ios.xcarchive \
            clean archive | xcpretty
