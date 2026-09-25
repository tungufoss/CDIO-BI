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

Ingimundardóttir, H. (2026). Designing authentic industry-engaged assessment for professional competence in business intelligence. *Proceedings of the 22nd International CDIO Conference*. CDIO Initiative, Liverpool, United Kingdom.

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

## Build

**Slides** (output goes to `docs/index.html`, served by GitHub Pages from `/docs`):
```bash
quarto render slides.qmd
```

The slides use the [HÍ Quarto theme](https://github.com/tungufoss/quarto-haskoli-islands-theme/releases/tag/v0.2.0) v0.2.0.

**Paper** (XeLaTeX + biber):
```bash
xelatex cdio2025-HelgaIngim-BI && biber cdio2025-HelgaIngim-BI && xelatex cdio2025-HelgaIngim-BI
```
