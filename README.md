# Mechanistic Modeling of Intracellular Signaling

Lecture materials for **Advances in Systems Immunology** (University of Pittsburgh), from Jim Faeder, Department of Computational and Systems Biology.

## 2026 lecture

- **Slides (handout):** [2026/pdf/mechanistic-modeling-handout.pdf](2026/pdf/mechanistic-modeling-handout.pdf). One page per slide with everything shown. Best for reading or printing.
- **Slides (presentation):** [2026/pdf/mechanistic-modeling.pdf](2026/pdf/mechanistic-modeling.pdf). The version shown in class, with step-by-step builds.

## Journal club

- **Paper:** Martí-Baena Q, Segura-Morales C, García-Ojalvo J, Serrano L. *Mechanistic pathway modeling reveals how IL-10 generates pleiotropic immune responses.* bioRxiv (2026). [PDF](2026/Marti-Baena-Mechanistic-IL10-2026.pdf) · [bioRxiv](https://doi.org/10.64898/2026.06.02.729479)
- **Guiding questions for presenters:** [2026/pdf/JC_guiding_questions.pdf](2026/pdf/JC_guiding_questions.pdf)

## Related material

- [*Rule-Based Modeling of Biological Systems: Theory and practice with BioNetGen*](https://ruleworld.github.io/bionetgen-book/): an open book that covers rule-based modeling in depth, with models, figures, and exercises.
- [RBM_Intro_BioNetGen](https://github.com/jrfaeder/RBM_Intro_BioNetGen): a hands-on introduction to rule-based modeling with BioNetGen and Python, with models, notebooks, and slides.
- [BNG Playground](https://ruleworld.github.io/bngplayground/): write and simulate BioNetGen models in your browser, with no installation.
- [2023-2024/](2023-2024/): slides from earlier years of this lecture.

## Building the slides

The slides are written in LaTeX (beamer) in [2026/mechanistic-modeling.tex](2026/mechanistic-modeling.tex). To rebuild all three PDFs, run:

```
2026/build.sh
```

This needs a TeX Live or MacTeX installation (pdflatex and latexmk). Building the guiding questions PDF also needs [pandoc](https://pandoc.org).
