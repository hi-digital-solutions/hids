#!/usr/bin/env bash

set -eu

post_title=''
post_author=''

function usage {
    local msg

    msg=$1

    if [ ! -z "${msg}" ] ; then
        echo "${msg}"
        echo " "
    fi

    echo Usage: "$(basename $0)" -t \"Title of the post\" -a \"Author Name\"
    exit 1
}

while getopts 't:a:' OPTION; do
    case "${OPTION}" in
        t)
            post_title="${OPTARG}"
            ;;
        a)
            post_author="${OPTARG}"
            ;;
        ?)
            usage
            ;;
    esac
done

if [[ -z "${post_title}" ]]; then
    usage "No title specified"
fi

if [[ -z "${post_author}" ]]; then
    usage "No author specified"
fi

slug=$(echo "${post_title}" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g')

filename="content/blog/${slug}.md"
datestr=$(date '+%Y-%m-%d')

cat <<EOT > "${filename}"
---
title: "${post_title}"
author: "${post_author}"
date: ${datestr}
summary: Include summary text here, or remove this line to have the summary auto-extracted (guessed) based on your post content.
# If your post includes a representative image, uncomment the following lines include its relative URL below. That image will be
# used when sharing the post to social media. Keep the extra indentation on the - line
# images:
#   - /images/something-or-other.jpg
---

Your content goes here...
EOT

echo "Stub created at ${filename}"
echo "Edit to fill in the content"
