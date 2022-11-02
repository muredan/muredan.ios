#!/bin/bash

set -eo pipefail

# create variables
IPA_PATH=build/muredan.ios.ipa

#upload ipa
xcrun altool --upload-app -t ios -f IPA_PATH -u "$APPLEID_USERNAME" -p "$APPLEID_PASSWORD" --verbose
