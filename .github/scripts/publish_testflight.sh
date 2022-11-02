#!/bin/bash

set -eo pipefail

#upload ipa
xcrun altool --upload-app -t ios -f build/muredan.ios.ipa -u "$APPLEID_USERNAME" -p "$APPLEID_PASSWORD" --verbose
