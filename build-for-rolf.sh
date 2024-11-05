#!/bin/bash -eux

set -o pipefail
IFS=$'\n\t'

cd "$(dirname "${BASH_SOURCE[0]}")"

git clean -xfd
xcodebuild -project *.xcodeproj -target strip
