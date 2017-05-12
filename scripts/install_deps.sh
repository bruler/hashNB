#!/bin/bash

set -eu
set -o pipefail

function install() {
  mason install $1 $2
  mason link $1 $2
}

# setup mason
./scripts/setup.sh --config local.env
source local.env

install protozero 1.5.1
install openssl 1.0.2d
install rapidjson 1.1.0