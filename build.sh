#!/usr/bin/env bash

set -e

cd _scripts
./pullposts
cd ..
rm -f public/blog/*.html
hugo --gc --minify
