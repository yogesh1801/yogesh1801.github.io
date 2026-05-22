# yogesh1801.github.io

This repository is set up for a simple blog on GitHub Pages using Jekyll and a GitHub Actions deployment workflow.

## Why this setup

- Free hosting on GitHub Pages
- Write posts in Markdown
- No local Ruby setup required to publish
- Easy to keep everything in git

## Publish it

1. Create a GitHub repository.
2. Name the repository `yogesh1801.github.io`.
3. Push these files to the `main` branch.
4. In GitHub, open `Settings` -> `Pages`.
5. Under `Build and deployment`, set `Source` to `GitHub Actions`.
6. Wait for the workflow to finish.

Your site URL will be:

`https://yogesh1801.github.io/`

## Push commands

```bash
cd /home/yogesh/Desktop/blog
git add .
git commit -m "Initial blog setup"
git remote add origin https://github.com/yogesh1801/yogesh1801.github.io.git
git push -u origin main
```

## Write a post

Create a file in `_posts/` named like:

`YYYY-MM-DD-title.md`

Example front matter:

```md
---
layout: post
title: "My New Post"
date: 2026-05-23 09:00:00 +0530
categories: notes
---

Write in Markdown here.
```

## Edit site details

Update these values in `_config.yml`:

- `title`
- `description`
- `author`

## When to prefer something else

Prefer something else if you want:

- A visual editor and admin dashboard
- Built-in newsletters, members, or payments
- Comments/search/analytics without adding extra services

For that, Ghost or Hashnode is usually easier than GitHub Pages.
