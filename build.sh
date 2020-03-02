#!/usr/bin/env bash

set -e

hugo version
hugo --gc --minify
