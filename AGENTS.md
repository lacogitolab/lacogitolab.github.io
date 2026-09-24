# AGENTS.md

Guidance for AI agents (and human collaborators) working on the **Lambda Cognition** personal site — a Jekyll blog forked from Huxpro's theme, hosted via GitHub Pages.

Read this before editing posts, pages, layouts, or theme assets.

---

## 1. Project Layout

```
.
├── _config.yml            # Jekyll config (collections, plugins, markdown, sidebar, PWA)
├── _layouts/              # default, page, post, intro, poem, keynote
├── _includes/             # nav, head, footer, intro-header, short-about, featured-tags, ...
├── _plugins/              # ruby3_compat.rb
├── content/
│   ├── _posts/            # blog posts (YYYY-MM-DD-title.md)
│   ├── _drafts/           # unpublished drafts (incl. post-template.md)
│   ├── _poems/            # poem collection (title.md, no date prefix)
│   ├── about.html         # /about/ page (multilingual zh + en)
│   ├── archive.html       # /archive/ tag-filtered post index
│   └── poems.html         # /poems/ poem listing
├── img/                   # header backgrounds, avatar, favicon, inpost/
├── less/                  # LESS sources (compiled to css/ via Grunt)
├── css/                   # compiled CSS (do not edit by hand)
├── js/                    # site JS (minified by Grunt)
├── pwa/                   # service worker / manifest assets
├── sw.js                  # service worker entry
├── index.html             # home (paginated post list, layout: page)
├── _config.yml
├── Gemfile                # jekyll ~> 4.4, jekyll-paginate, jekyll-redirect-from
├── package.json           # Grunt toolchain (less, uglify, watch)
├── Gruntfile.js           # LESS→CSS + JS uglify + banner
├── Rakefile               # `rake post title="..."` scaffolder
└── .agents/
    ├── rules/             # post-writing-style.md (pre-2025 voice/tone/structure rules)
    └── skills/
```

Key conventions:
- `collections_dir: content` — all collections (`_posts`, `_poems`) live under `content/`.
- `permalink: pretty`, `paginate: 10`, `markdown: kramdown` with GFM input.
- `future: true` — posts dated in the future will publish.
- Navigation is data-driven: any HTML page in `content/` with a `title` and `navigation_weight` in its front matter appears in the navbar (sorted ascending by weight), unless `hide-in-nav: true`.

---

## 2. Writing Posts

### 2.1 Create a new post

Prefer the Rake scaffolder so the front matter matches the theme exactly:

```sh
$ rake post title="A Title" subtitle="A subtitle" [date="YYYY-MM-DD"]
```

This creates `content/_posts/YYYY-MM-DD-a-title.md` with the canonical front matter. Edit the generated file — do **not** hand-roll the filename or front matter, since the Rake task enforces the slug rules and date format the theme expects.

If you scaffold manually, the required front matter is:

```yaml
---
layout: post
title: "Title Here"
subtitle: "Optional English subtitle"
date: YYYY-MM-DD
author: "Xiaming Chen"
header-img: "img/post-bg-universe.jpg"
tags: ["Tag One", "Tag Two"]
---
```

- **Filename**: `content/_posts/YYYY-MM-DD-slug.md`. Slug is lowercased, spaces→`-`, non-word chars stripped.
- **`layout`**: always `post` for blog entries. Use `poem` for the poems collection.
- **`header-img`**: path under `img/`. Default `img/post-bg-universe.jpg`. Available backgrounds live in `img/` (e.g. `post-bg-digital-native.jpg`, `post-bg-halting.jpg`, `home-bg.jpg`). Add new background images to `img/` and reference them by relative path.
- **`tags`**: a YAML array. Tags with ≥ `featured-condition-size` posts (currently `1`) appear in the sidebar "Featured Tags" block.
- **Optional**: `subtitle`, `redirect_from` (array of old paths, requires `jekyll-redirect-from`), `multilingual: true`, `mathjax: true`, `no-catalog: true`, `lang: 'en'` (controls preview truncation length on the home list).

### 2.2 Writing style — follow `.agents/rules/post-writing-style.md`

New posts in `content/_posts/` must follow the pre-2025 writing style documented in `.agents/rules/post-writing-style.md`. Summary of the rules distilled from the 2014–2024 corpus:

- **Front matter**: Chinese title + English subtitle pairing is idiomatic; keep `header-img` default unless a topic-specific background exists.
- **Language choice**: Chinese for essays / cultural notes / technical notes; English for manifestos, resource lists, and language-theory posts. Keep technical terms inline untranslated (e.g. "闭包 (closure)").
- **Voice**: first person, reflective, conversational-but-intellectual. Literary asides and self-deprecation welcome. Not promotional, not a detached analyst.
- **Structure**: opening context paragraphs → `<!-- more -->` (excerpt break) → `##` sections → curated bullet lists with personal annotations → blockquotes for cited definitions → references footer.
- **Wording**: concrete metaphors, parenthetical asides, abbreviations expanded on first use. Preserve the author's light idiolect ("wangling", "vintage point").
- **Length/cadence**: 300–2000 words, 3–6 sentence paragraphs.
- **Avoid**: the 2025+ drift — sweeping landscape openers, abstract-noun stacking, generic "In this post I will..." intros, detached analyst tone.

When drafting, open 2–3 existing pre-2025 posts in `content/_posts/` (e.g. `2017-01-06-all-takenism.md`, `2018-08-06-meta-computability.md`, `2023-12-10-what-lisp-surprises-me.md`) as voice references.

### 2.3 Drafts

Unpublished posts live in `content/_drafts/`. A `post-template.md` scaffold exists there. Jekyll does not build drafts by default; to preview drafts locally:

```sh
$ bundle exec jekyll serve --drafts
```

Move a draft to `content/_posts/` with a date prefix when ready to publish.

### 2.4 Poems collection

Poems are a Jekyll collection (`collections: poems`, `output: true`) rooted at `content/_poems/`. Each poem is `title.md` (no date prefix required; the date goes in front matter). Front matter:

```yaml
---
layout: poem
title: 标题
date: YYYY-MM-DD HH:MM:SS +0800
---
```

Poems use the `poem` layout (prev/next pager iterates `site.poems` sorted by date descending). They are listed on `content/poems.html` at `/poems/`.

---

## 3. Maintaining Pages & Navigation

### 3.1 Top-level pages

Static HTML pages live in `content/` and use `layout: page` (or `intro`, `default`). Current pages:

| File | URL | Layout | Nav weight |
|---|---|---|---|
| `content/about.html` | `/about/` | page | 90 |
| `content/archive.html` | `/archive/` | default | 80 |
| `content/poems.html` | `/poems/` | intro | 10 |
| `index.html` (root) | `/` | page | — |

### 3.2 Adding a page to the navbar

The navbar (`_includes/nav.html`) auto-includes every HTML page that has:
- a `title` in front matter, and
- `hide-in-nav != true`.

Pages are sorted by `navigation_weight` (ascending). Lower weight = further left. To add a new nav entry, create an HTML file in `content/` with:

```yaml
---
layout: page
title: "New Page"
permalink: /new-page/
navigation_weight: 50
---
```

To hide a page from the nav, set `hide-in-nav: true`.

### 3.3 Editing the About page

`content/about.html` pulls content from `_includes/about/zh.md` and `_includes/about/en.md` and renders both with a multilingual selector. Edit those two includes to update the about text — do **not** inline the content into `about.html`.

### 3.4 Archive page

`content/archive.html` is a tag-filtered, year-grouped index of all posts. It is data-driven — no manual editing is needed when posts are added. Only edit it to change the archive's layout or filtering logic.

---

## 4. Theme & Assets

### 4.1 LESS → CSS

Theme styles are written in `less/jaminc-blog.less` and compiled to `css/jaminc-blog.css` / `css/jaminc-blog.min.css` by Grunt. **Never edit files in `css/` directly** — they are build artifacts.

To work on styles:

```sh
$ npm install        # first time only
$ npm run dev        # grunt watch (LESS) + jekyll serve
```

Or a one-shot build:

```sh
$ npx grunt          # uglify + less + usebanner
```

### 4.2 JS

Site JS lives in `js/jaminc-blog.js` and is minified to `js/jaminc-blog.min.js` by Grunt. Same rule: edit the source, not the `.min.js`.

### 4.3 Images

- Post header backgrounds: `img/post-bg-*.jpg`
- Page/section backgrounds: `img/about-bg*.jpg`, `img/contact-bg.jpg`, `img/tag-bg.jpg`, `img/home-bg*.jpg`
- Avatar: `img/avatar.jpg` (referenced in `_config.yml` as `sidebar-avatar`)
- In-post images: `img/inpost/`

Reference any image in front matter or body as `img/...` (relative to project root; the theme prepends `site.baseurl`).

### 4.4 Layouts quick reference

- `default.html` — base HTML shell: `<head>`, nav, search, `{{ content }}`, footer.
- `page.html` — static page with optional sidebar (`site.sidebar` / `page.sidebar`).
- `post.html` — single post: intro header, content, prev/next pager, optional Disqus/Netease comments, side catalog, featured tags.
- `intro.html` — minimal page (used by `poems.html`): header + full-width content, no sidebar.
- `poem.html` — single poem: like `post.html` but pager iterates `site.poems`.
- `keynote.html` — presentation-style layout.

### 4.5 Includes

Common includes under `_includes/`:
- `nav.html` — navbar (data-driven, see §3.2).
- `head.html` — `<head>` (meta, CSS, fonts).
- `footer.html` — footer.
- `intro-header.html` — the big header band; takes `type` (`post`/`page`) and `short` (bool).
- `short-about.html` — sidebar bio block.
- `featured-tags.html` — sidebar tag cloud.
- `friends.html` — friends list (currently `site.friends: []` in `_config.yml`).
- `multilingual-sel.html` — zh/en toggle, shown when `page.multilingual: true`.
- `mathjax_support.html` / `mathjax_support2.html` — MathJax; enabled per-post via `mathjax: true` or site-wide via `page-mathjax` in `_config.yml`.

---

## 5. Local Development

```sh
# Ruby deps (first time)
$ bundle install

# Serve with live reload
$ npm start
# → http://localhost:4000

# With drafts visible
$ bundle exec jekyll serve --drafts

# Theme work (LESS + JS) with auto-rebuild
$ npm run dev
```

Ruby version: `3.4.8` (pinned in `Gemfile`). Use rbenv (see `README.md`) if your system Ruby differs.

---

## 6. Configuration Cheatsheet (`_config.yml`)

| Key | Value | Notes |
|---|---|---|
| `title` | Lambda Cognition | Site title / navbar brand |
| `url` | `https://lambdacogito.github.io` | Canonical URL |
| `collections_dir` | `content` | All collections under `content/` |
| `future` | `true` | Future-dated posts publish |
| `permalink` | `pretty` | `/YYYY/MM/DD/title/` |
| `paginate` | `10` | Posts per page on `index.html` |
| `markdown` | `kramdown` (GFM) | Header IDs enabled for side catalog |
| `plugins` | `jekyll-paginate, jekyll-redirect-from` | |
| `sidebar` | `true` | Global sidebar on page layout |
| `sidebar-about-description` | Researcher on Knowledge Computing... | Sidebar bio |
| `featured-tags` | `true` | Sidebar tag cloud |
| `featured-condition-size` | `1` | Min posts for a tag to be "featured" |
| `service-worker` | `true` | PWA enabled |
| `friends` | `[]` | Friends list — add `{ title, href }` entries here |

---

## 7. Agent Workflow Checklist

When asked to **write a new post**:
1. `rake post title="..." [subtitle="..."] [date="..."]` or copy `content/_drafts/post-template.md`.
2. Read `.agents/rules/post-writing-style.md` and 2–3 pre-2025 posts for voice.
3. Write the body following the structure: opening → `<!-- more -->` → `##` sections → lists/quotes → references.
4. Set `header-img`, `tags`, `author: "Xiaming Chen"`.
5. Preview with `bundle exec jekyll serve --drafts` if it's a draft.

When asked to **add/edit a page or nav entry**:
1. Create or edit an HTML file in `content/` with `layout: page` (or `intro`).
2. Set `permalink`, `title`, and `navigation_weight` in front matter.
3. The navbar auto-picks it up — no need to edit `_includes/nav.html`.

When asked to **change theme styles**:
1. Edit `less/jaminc-blog.less` (source), not `css/`.
2. Run `npx grunt` or `npm run dev` to recompile.
3. Commit both the LESS source and the compiled CSS.

When asked to **add a header image**:
1. Drop the file into `img/` (follow the `post-bg-*.jpg` naming for post backgrounds).
2. Reference it as `img/your-image.jpg` in the post's `header-img`.

---

## 8. Do / Don't

**Do**
- Use `rake post` to scaffold posts.
- Follow `.agents/rules/post-writing-style.md` for voice and structure.
- Edit LESS sources, not compiled CSS.
- Keep front matter keys consistent with existing posts.
- Use `<!-- more -->` to set the excerpt break on long posts.

**Don't**
- Don't hand-edit files in `css/` or `*.min.js` — they are build artifacts.
- Don't add hardcoded nav links in `_includes/nav.html` — use `navigation_weight` in page front matter instead.
- Don't inline About content into `content/about.html` — edit `_includes/about/{zh,en}.md`.
- Don't date a post in the future unless you intend it to publish (the site has `future: true`).
- Don't adopt the 2025+ writing drift (sweeping landscape openers, abstract-noun stacking) — see the style rule.
