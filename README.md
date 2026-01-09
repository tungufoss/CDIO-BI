
# CDIO Implementation Paper  
## Authentic Industry-Engaged Assessment for Professional Competence in Business Intelligence

This repository contains the source files for a **CDIO Implementation Paper** submitted to the **22nd International CDIO Conference (2026)**.

**Title:**  
DESIGNING AUTHENTIC INDUSTRY‑ENGAGED ASSESSMENT FOR PROFESSIONAL COMPETENCE IN BUSINESS INTELLIGENCE

**Author:**  
Helga Ingimundardóttir  
Assistant Professor of Industrial Engineering  
University of Iceland

---

## Overview

The paper describes the redesign and implementation of an undergraduate Business Intelligence course aligned with **CDIO Standards 5, 7, 8, and 11**. The course integrates **industry‑engaged, semester‑long project work**, team‑based learning, and **competence‑oriented assessment and feedback** to support professional competence development.

The contribution is framed as a **CDIO Implementation case**, reporting on a completed course redesign delivered across two iterations, and reflecting on design principles, tensions, and transferable insights from sustained industry collaboration.

---

## Repository Contents

- `Ingimundardottir_CDIO_Industry_Engaged_Assessment_Business_Intelligence.pdf`  
  → Final submission PDF

- `cdio2025-HelgaIngim-BI.tex`  
  → Main LaTeX source file

- `body.tex`  
  → Paper body (sections and content)

- `references.bib`  
  → BibTeX references

- `cdio.cls`  
  → CDIO conference LaTeX class file

- `graphics/`  
  → Figures used in the paper

---

## Build Information

The paper is compiled using **LaTeX** with the official `cdio.cls` class file provided by the CDIO Conference.

To compile locally:
```bash
pdflatex cdio2025-HelgaIngim-BI.tex
bibtex cdio2025-HelgaIngim-BI
pdflatex cdio2025-HelgaIngim-BI.tex
pdflatex cdio2025-HelgaIngim-BI.tex
``
