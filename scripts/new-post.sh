#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 \"Post title\" [--draft]" >&2
  exit 1
fi

title="$1"
draft=0
if [ "${2:-}" = "--draft" ]; then
  draft=1
fi

slug=$(echo "$title" \
  | tr '[:upper:]' '[:lower:]' \
  | sed -E 's/[^a-z0-9]+/-/g' \
  | sed -E 's/^-+|-+$//g')

if [ -z "$slug" ]; then
  echo "Could not derive slug from title." >&2
  exit 1
fi

date=$(date +%Y-%m-%d)
datetime=$(date +"%Y-%m-%d %H:%M:%S %z")

if [ "$draft" -eq 1 ]; then
  dir="_drafts"
  filename="$dir/${slug}.md"
else
  dir="_posts"
  filename="$dir/${date}-${slug}.md"
fi

mkdir -p "$dir"

if [ -e "$filename" ]; then
  echo "File already exists: $filename" >&2
  exit 1
fi

cat > "$filename" <<EOF
---
title: "${title}"
date: ${datetime}
categories: []
tags: []
---

Write your post here.
EOF

echo "Created $filename"
