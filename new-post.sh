#!/bin/bash
set -e

if [ -z "$1" ]; then
  echo "Usage: ./new-post.sh my-post-title"
  exit 1
fi

DATE=$(date +%Y-%m-%d)
SLUG="$1"
DIR="content/posts/${DATE}-${SLUG}"
FILE="${DIR}/index.md"

mkdir -p "$DIR"

cat > "$FILE" << EOF
+++
title = "${SLUG//-/ }"
date = ${DATE}
draft = false
tags = []
+++

EOF

echo "Created: $DIR/"
echo "  - $FILE"
echo ""
echo "Add images to $DIR/ and reference them as ![alt](image.jpg)"
