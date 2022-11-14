#!/bin/sh

set -eo pipefail

# create variables
CERTIFICATE_PATH=$RUNNER_TEMP/build_certificate.p12
PP_PATH=$RUNNER_TEMP/build_pp.mobileprovision
KEYCHAIN_PATH=$RUNNER_TEMP/build.keychain

# import certificate and provisioning profile from secrets
echo "$BUILD_CERTIFICATE_BASE64" | base64 --decode -o $CERTIFICATE_PATH
echo "$BUILD_PROVISION_PROFILE_BASE64" | base64 --decode -o $PP_PATH

#import certificate to keychain
security create-keychain -p "" $KEYCHAIN_PATH
security set-keychain-settings -lut 21600 $KEYCHAIN_PATH
security unlock-keychain -p "" $KEYCHAIN_PATH
security import $CERTIFICATE_PATH -P "$P12_PASSWORD" -A -t cert -f pkcs12 -k $KEYCHAIN_PATH -T /usr/bin/codesign
security list-keychain -d user -s $KEYCHAIN_PATH
security show-keychain-info $KEYCHAIN_PATH
security set-key-partition-list -S apple-tool:,apple: -s -k "" $KEYCHAIN_PATH

# apply provisioning profile
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp $PP_PATH ~/Library/MobileDevice/Provisioning\ Profiles