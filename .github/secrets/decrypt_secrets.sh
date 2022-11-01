#!/bin/sh
set -eo pipefail

gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS" --output ./.github/secrets/PROVISIONING_PROFILE.mobileprovision ./.github/secrets/PROVISIONING_PROFILE.mobileprovision.gpg
gpg --quiet --batch --yes --decrypt --passphrase="$IOS_KEYS" --output ./.github/secrets/BUILD_CERTIFICATE.p12 ./.github/secrets/BUILD_CERTIFICATE.p12.gpg

mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles

cp ./.github/secrets/PROVISIONING_PROFILE.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/PROVISIONING_PROFILE.mobileprovision


security create-keychain -p "" build.keychain
security import ./.github/secrets/BUILD_CERTIFICATE.p12 -P "$P12_PASSWORD" -t agg -k ~/Library/Keychains/build.keychain -P "" -A

security list-keychains -s ~/Library/Keychains/build.keychain
security default-keychain -s ~/Library/Keychains/build.keychain
security unlock-keychain -p "" ~/Library/Keychains/build.keychain

security set-key-partition-list -S apple-tool:,apple: -s -k "" ~/Library/Keychains/build.keychain