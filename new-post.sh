#!/bin/bash
set -e

if [ -z "$1" ]; then
  echo "Usage: ./new-post.sh my-post-title"
  exit 1
fi

DATE=$(date +%Y-%m-%d)
SLUG="$1"
FILE="content/posts/${DATE}-${SLUG}.md"

cat > "$FILE" << EOF
+++
title = "${SLUG//-/ }"
date = ${DATE}
draft = false
tags = []
+++

EOF

echo "Created: $FILE"
