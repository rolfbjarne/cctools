#!/bin/bash -eux

set -o pipefail
IFS=$'\n\t'

git clean -xfd
xcodebuild -project *.xcodeproj -target strip
