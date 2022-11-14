#!/bin/bash

set -eo pipefail

cat <<< $(jq '(.[0] | .text) = "***Development***\n" + (.[0] | .text)' ./muredan.ios/release_notes.json) > ./muredan.ios/release_notes.json