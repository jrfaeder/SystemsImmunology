#!/usr/bin/env bash
# Build the lecture and copy the PDFs to pdf/:
#   pdf/mechanistic-modeling.pdf          presentation, with step-by-step builds
#   pdf/mechanistic-modeling-handout.pdf  handout, one page per slide with everything shown
#   pdf/JC_guiding_questions.pdf          journal club questions (from JC_guiding_questions.md)
#
# Figures in figures/slideNN.pdf are single pages of the 2024 PowerPoint deck
# (2023-2024/SystemsImmunology_MechansticModeling_Faeder_2024.pdf), cropped in the
# .tex with \regionfig and \maskedfig.
set -euo pipefail
cd "$(dirname "$0")"

m=mechanistic-modeling
mkdir -p pdf
echo "==> $m"
latexmk -interaction=nonstopmode -halt-on-error "$m.tex" > build.log 2>&1 \
  && latexmk -interaction=nonstopmode -halt-on-error -jobname="$m-handout" \
       -usepretex='\PassOptionsToClass{handout}{beamer}' "$m.tex" >> build.log 2>&1 \
  || { echo "Build failed; see build.log" >&2; tail -20 build.log >&2; exit 1; }
cp "build/$m.pdf" "pdf/$m.pdf"
cp "build/$m-handout.pdf" "pdf/$m-handout.pdf"
echo "    pdf/$m.pdf"
echo "    pdf/$m-handout.pdf"

# Journal club guiding questions: Markdown -> PDF (needs pandoc)
if command -v pandoc >/dev/null; then
  pandoc JC_guiding_questions.md -o pdf/JC_guiding_questions.pdf --pdf-engine=pdflatex \
    -V geometry:margin=1in -V fontsize=11pt -V fontfamily=sourcesanspro \
    -V fontfamilyoptions=default -V colorlinks=true -V urlcolor=teal
  echo "    pdf/JC_guiding_questions.pdf"
else
  echo "    (pandoc not found; skipped pdf/JC_guiding_questions.pdf)"
fi
