# Post Writing Style Rule

> Applies to any new post created under `content/_posts/`.
>
> **Reference corpus**: all posts dated **before 2025-01-01** in `content/_posts/`.
> When drafting a new post, match the writing style, wording, and tone of that
> pre-2025 corpus. Do NOT mimic the more polished, marketing-style prose of the
> 2025+ posts (e.g. `2025-01-11-neurosymbolic-part1.md`).

## 1. Front matter

Every post begins with a YAML front matter block matching the corpus format:

```yaml
---
layout: post
title: "Post Title"
subtitle: "Optional English subtitle for Chinese-titled posts"
date: YYYY-MM-DD
author: "Xiaming Chen"
header-img: "img/post-bg-universe.jpg"
tags: ["Tag1", "Tag2"]
---
```

Rules:
- `layout` is always `post`.
- `author` is always `"Xiaming Chen"`.
- `header-img` defaults to `"img/post-bg-universe.jpg"` unless a topic-specific
  banner is warranted.
- `tags` is a list of short, capitalized tags; may be empty `[]` for
  essay-style posts.
- Chinese-titled posts pair the Chinese `title` with an English `subtitle`
  (see `2017-01-06-all-takenism.md`, `2022-02-12-at-bits-peak.md`).

## 2. Language choice

The author is bilingual and chooses language by topic and audience:

- **Chinese** for cultural essays, philosophical reflections, and technical
  notes aimed at a Chinese-speaking reader (e.g. `2017-01-06`, `2018-08-06`,
  `2023-09-18`, `2024-04-18`). English technical terms (closure, iterator,
  ggplot2, Linked Data) are kept inline, untranslated.
- **English** for project manifestos, tool/resource lists, and language-theory
  write-ups aimed at an international audience (e.g. `2014-10-16`,
  `2015-10-15`, `2023-03-12`, `2023-12-10`).
- Do **not** machine-translate the author's voice. Pick one primary language
  per post and stay consistent, sprinkling the other language only for
  established technical terms or short quoted phrases.

## 3. Voice and tone

- **First person, personal.** Use "I" / "我" liberally. The author writes from
  lived experience ("In my Ph.D career...", "I was frustrated by...", "我比较
  喜欢研究计算机语言理论").
- **Reflective and earnest, not promotional.** Open with personal motivation
  or the problem that prompted the post, then earn the reader's attention.
  Avoid hype words ("revolutionary", "game-changing", "cutting-edge"). The
  pre-2025 voice never sells; it shares.
- **Conversational but intellectual.** Address the reader directly ("you",
  "看官", "读者") but respect their intelligence. Explain prerequisites only
  when genuinely needed ("What you need to know is this is just a computer
  tool").
- **Self-deprecating asides are welcome.** ("不求看官解，自娱耳", "别做梦了，
  醒醒吧！", "Leaning from scratch, that's my advice").
- **Literary and cultural references** appear naturally: 鲁迅, 钱钟书《管锥编》,
  metaphors like "Swiss-army-knife", "巨人的肩膀", "奶嘴效应". Use one or two
  per post at most, never as decoration.

## 4. Structure

- Open with 1–3 paragraphs of context/motivation before any heading.
- Insert `<!-- more -->` after the opening excerpt so the blog index shows a
  teaser (see `2014-10-16`, `2017-01-06`).
- Use `##` headings for major sections, `###` for subsections. Section names
  are short noun phrases: "Preliminaries", "Projects", "背景", "函数",
  "本体论".
- Curated lists (books, packages, resources) use `-` bullets with a one-line
  annotation per item, often a personal opinion ("小清新绘图", "may become a
  bible under your pillow").
- Cited definitions or quotations use `>` blockquotes, with the source named
  in the preceding sentence.
- Code examples use fenced code blocks with the language tag. Inline code
  uses backticks.
- End with a brief 参考链接 / References section when sources were consulted.
  Links are inline `[text](url)` within the body; a flat URL list is fine for
  informal posts.

## 5. Wording and phrasing

- Prefer concrete over abstract. "a tiny Swiss-army-knife in pocket" beats
  "a versatile tool".
- Parenthetical asides (both Chinese and English) carry qualifications or
  side notes: "(more or less)", "(注：...)", "(specifically Neural Networks)".
- Emphasis: `*italics*` for coined terms and gentle emphasis; `**bold**` for
  the single most important phrase in a paragraph. Never bold whole sentences.
- The author's idiolect includes occasional unconventional word choices and
  spellings (e.g. "wangling" for wrangling, "vintage point" for vantage
  point, "declaimed" for declared). These are part of the voice — preserve a
  light personal flavor, but do not introduce new errors.
- Abbreviations are expanded on first use within a post: "GIS (Geographic
  Information System)", "LPG (Labeled Property Graph)".
- Numbers and units: keep the author's style — `1.7MB`, `2.5EB`, `44ZB` with
  a parenthetical expansion `(1EB=10^9GB)` when the scale matters.

## 6. Topics and framing

- **Technical write-ups** ("What X surprises me" series, "Zen of X" series)
  frame a language/tool through the author's personal surprise or aesthetic
  appreciation, not as a reference manual. Compare against familiar languages
  (Java/CPP/Python) to highlight what is distinctive.
- **Project manifestos** (LaCogito, LambdaCogito) open with the frustration
  or gap that motivated the project, cite inspiring prior work (Wolfram,
  OpenCog, Cyc) with respect, then state the concrete milestone ahead.
- **Resource lists** ("14 Must-Read Books", "R Pkgs Under Your Pillow") are
  opinionated and curated; each entry has a one-line personal take, not a
  neutral description.
- **Cultural essays** (新拿来主义, 我站在比特之巅) are argumentative, build a
  case over several paragraphs, and close on a memorable line, often
  restated in bold.

## 7. Length and cadence

- Posts range from ~300 words (a focused note) to ~2000 words (a manifesto).
  Match the topic's natural length; do not pad.
- Paragraphs are 3–6 sentences. Long technical paragraphs are broken by a
  blank line. Lists are preferred over dense prose when enumerating items.

## 8. Things to avoid (post-2025 drift)

The 2025+ posts drift toward a more formal, abstract, "whitepaper" register.
For new posts that should match the pre-2025 voice, **avoid**:
- Opening with a sweeping market/industry landscape paragraph ("The success
  of LLMs has triggered a new wave of prosperity...").
- Stacking abstract nouns ("self-explanation, self-reference, and unlimited
  extensibility for diverse real-world contexts via active inference").
- Long, citation-heavy sentences with bracketed references mid-sentence.
- A detached third-person analyst tone. Stay in first person.

When in doubt, read two or three pre-2025 posts aloud and match their rhythm.
