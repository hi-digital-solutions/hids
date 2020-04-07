#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "${SCRIPT_DIR}/.."

npx remark \
    -q \
    --ignore-pattern themes \
    .
npx sass-lint --verbose assets/sass/hids.scss
