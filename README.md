# CDIO Implementation Paper
## Designing Authentic Industry-Engaged Assessment for Professional Competence in Business Intelligence

**Author:** Helga Ingimundardóttir, Assistant Professor of Industrial Engineering, University of Iceland
**Event:** 22nd International CDIO Conference, June 23rd, 2026

---

## Overview

This repository contains the paper source and the conference presentation for a CDIO Implementation paper accepted for the 22nd International CDIO Conference (2026).

The paper describes the redesign of an undergraduate Business Intelligence course to strengthen industrial relevance and professional competence. Key elements include a sustained industry-engaged project, team-based learning, and competence-oriented assessment using pull requests and accumulated feedback.

---

## Presentation (Quarto RevealJS)

The slides are built with [Quarto](https://quarto.org/) using a custom HI (University of Iceland) RevealJS theme.

To render:

```bash
quarto render slides.qmd
```

Output: `index.html`

To start a new deck from the same HI template:

```bash
quarto use template tungufoss/quarto-hi --no-prompt
```

For local development, this repository assumes `quarto-hi/` can sit next to the deck folder:

```bash
quarto use template ../quarto-hi --no-prompt
```

### Structure

| Path | Description |
|------|-------------|
| `slides.qmd` | Main presentation source |
| `index.html` | Rendered presentation |
| `styles/colors.css` | HI brand colour variables |
| `styles/hi26-reveal.css` | Base HI RevealJS theme |
| `styles/cdio2026.css` | Conference-specific overrides |
| `_extensions/card-enum/` | Lua filter: `.fa-card` and `.card-enum` layouts |
| `_extensions/hi-title/` | Lua filter: HI title slide shortcode |
| `_extensions/menti/` | Lua filter: Mentimeter embed shortcode |
| `_extensions/pause/` | Lua filter: animated pause shortcode |
| `partials/header-includes.inc` | Font Awesome + Jost font CDN links |
| `partials/body-after.inc` | Scripts injected after body |
| `scripts/countdown.js` | Countdown timer script |
| `include/lcf-grid.svg` | LOUIS competence framework grid |
| `include/course-flow.svg` | Pedagogical structure diagram |
| `include/vr2.jpg` | Photo used on contact slide |
| `img/hi/` | HI logos and favicon |

---

## Paper (LaTeX)

The paper is compiled with XeLaTeX and BibLaTeX (biber backend).

To compile:

```bash
xelatex cdio2025-HelgaIngim-BI.tex
biber cdio2025-HelgaIngim-BI
xelatex cdio2025-HelgaIngim-BI.tex
xelatex cdio2025-HelgaIngim-BI.tex
```

### Structure

| Path | Description |
|------|-------------|
| `cdio2025-HelgaIngim-BI.tex` | Main LaTeX source |
| `cdio2025-HelgaIngim-BI.pdf` | Compiled paper PDF |
| `cdio.cls` | CDIO conference class file |
| `references.bib` | BibLaTeX references |
| `include/body.tex` | Paper body |
| `include/LCF-tikz-en.tex` | TikZ: LOUIS competence framework |
| `include/course-flow-en.tex` | TikZ: pedagogical structure diagram |
| `include/by-nc-nd.pdf` | CC BY-NC-ND licence figure |

---

## Review Materials

| Path | Description |
|------|-------------|
| `REVIEWS.md` / `REVIEWS.pdf` | Acceptance letter and reviewer comments |
| `REVISION.md` / `REVISION.pdf` | Response to reviewers |

---

## CDIO Standards Alignment

- **Standard 5** — Design-Implement Experiences
- **Standard 7** — Integrated Learning Experiences
- **Standard 8** — Active Learning
- **Standard 11** — Learning Assessment
