#!/usr/bin/env bash

set -e

cd _scripts
./pullposts
cd ..
hugo serve
