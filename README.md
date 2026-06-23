# Designing Authentic Industry-Engaged Assessment for Professional Competence in Business Intelligence

**Helga Ingimundardóttir** · University of Iceland  
22nd International CDIO Conference · Liverpool, UK · June 23rd, 2026

---

## CDIO Standards

- **Standard 5** — Design-Implement Experiences
- **Standard 7** — Integrated Learning Experiences
- **Standard 8** — Active Learning
- **Standard 11** — Learning Assessment

---

## How to cite

```bibtex
@inproceedings{Ingimundardottir2026Industry,
  author       = {Ingimundard\'ottir, Helga},
  title        = {Designing Authentic Industry-Engaged Assessment for Professional Competence in Business Intelligence},
  booktitle    = {Proceedings of the 22nd International {CDIO} Conference},
  address      = {Liverpool, United Kingdom},
  organization = {CDIO Initiative},
  year         = {2026}
}
```

---

## Contents

| Path | Description |
|------|-------------|
| `slides.qmd` | Presentation source (Quarto RevealJS) |
| `index.html` | Rendered presentation |
| `cdio2025-HelgaIngim-BI.tex` | Paper source (LaTeX) |
| `cdio-bi.pdf` | Compiled paper PDF |
| `include/lcf-grid.svg` | LOUIS competence framework grid |
| `include/course-flow.svg` | Pedagogical structure diagram |
| `_extensions/` | Lua filters: hi-title, card-enum, menti, pause |
| `styles/` | SCSS theme and CSS overrides |
| `img/hi/` | HI logos |

---

## Build

**Slides:**
```bash
quarto render slides.qmd
```

**Paper** (XeLaTeX + biber):
```bash
xelatex cdio2025-HelgaIngim-BI && biber cdio2025-HelgaIngim-BI && xelatex cdio2025-HelgaIngim-BI
```
