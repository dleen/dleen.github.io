#!/bin/bash
set -e

DRAFT=false

while [[ $# -gt 0 ]]; do
  case $1 in
    -d|--draft)
      DRAFT=true
      shift
      ;;
    -h|--help)
      echo "Usage: ./new-post.sh [-d|--draft] my-post-title"
      echo ""
      echo "Options:"
      echo "  -d, --draft    Create post as draft (default: published)"
      exit 0
      ;;
    -*)
      echo "Unknown option: $1"
      exit 1
      ;;
    *)
      SLUG="$1"
      shift
      ;;
  esac
done

if [ -z "$SLUG" ]; then
  echo "Usage: ./new-post.sh [-d|--draft] my-post-title"
  exit 1
fi

DATE=$(date +%Y-%m-%d)
DIR="content/posts/${DATE}-${SLUG}"
FILE="${DIR}/index.md"

mkdir -p "$DIR"

cat > "$FILE" << EOF
+++
title = "${SLUG//-/ }"
date = ${DATE}
draft = ${DRAFT}
tags = []
+++

EOF

echo "Created: $DIR/"
echo "  - $FILE (draft: ${DRAFT})"
echo ""
echo "Add images to $DIR/ and reference them as ![alt](image.jpg)"
