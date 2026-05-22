# yogesh1801.github.io

A simple blog on GitHub Pages — Jekyll + minima theme, deployed via GitHub Actions.

## Write a new post

```bash
./scripts/new-post.sh "My post title"
```

This creates `_posts/YYYY-MM-DD-my-post-title.md` with front matter filled in. Edit the file, commit, push — GitHub Actions builds and deploys.

For a draft (won't be published until moved to `_posts/`):

```bash
./scripts/new-post.sh "Half-baked idea" --draft
```

## Publish

```bash
git add .
git commit -m "Add post: my title"
git push
```

The site rebuilds automatically. Watch progress in the repo's **Actions** tab. Live at:

https://yogesh1801.github.io/

## What's in the box

- **`_posts/`** — published posts (`YYYY-MM-DD-slug.md`)
- **`_drafts/`** — unpublished drafts (no date prefix)
- **`_includes/header.html`** — site header with theme toggle
- **`_includes/head.html`** — `<head>` with SEO tags
- **`scripts/new-post.sh`** — scaffolds a post or draft
- **`archive.md`** → `/archive/` — all posts grouped by year
- **`tags.md`** → `/tags/` — posts grouped by tag
- **`about.md`** → `/about/` — about page
- **`_config.yml`** — site settings
- **`.github/workflows/deploy.yml`** — build + deploy on push to `main`

## Plugins enabled

- `jekyll-feed` — RSS at `/feed.xml`
- `jekyll-seo-tag` — `<title>`, OG, Twitter cards
- `jekyll-sitemap` — `/sitemap.xml`

All three are on the GitHub Pages whitelist, so they build without a Gemfile.

## First-time setup (already done)

If you ever start fresh:

1. Create a repo named `<username>.github.io`.
2. Push these files to `main`.
3. In **Settings → Pages**, set **Source** to **GitHub Actions**.

## Edit site details

Update in `_config.yml`:

- `title` — site title
- `description` — used by SEO + RSS
- `author` — your name
- `url` — full https URL to the site
- `timezone` — IANA timezone (e.g. `Asia/Kolkata`)

## Local preview (optional)

You don't need this to publish, but if you want to preview locally:

```bash
gem install bundler jekyll
bundle init
bundle add jekyll jekyll-feed jekyll-seo-tag jekyll-sitemap
bundle exec jekyll serve --drafts
```

Open http://localhost:4000. The `--drafts` flag includes `_drafts/` in the build.
