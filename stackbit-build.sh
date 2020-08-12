#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5f344355d1e74600160e5fec/webhook/build/ssgbuild > /dev/null

next build && next export

curl -s -X POST https://api.stackbit.com/project/5f344355d1e74600160e5fec/webhook/build/publish > /dev/null