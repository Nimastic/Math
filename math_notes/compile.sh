#!/usr/bin/env bash
# Compile the C++ consolidated notes LaTeX file.
# Usage:
#   ./compile_cpp_notes.sh            # compiles main.tex
#   ./compile_cpp_notes.sh other.tex  # compiles a different .tex file

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

INPUT_TEX="${1:-main.tex}"

if [[ ! -f "$INPUT_TEX" ]]; then
  echo "Error: '$INPUT_TEX' not found in '$SCRIPT_DIR'."
  exit 1
fi

echo "Compiling: $INPUT_TEX"

# Prefer latexmk if available, otherwise fall back to pdflatex.
if command -v latexmk >/dev/null 2>&1; then
  latexmk -pdf -interaction=nonstopmode -halt-on-error "$INPUT_TEX"
else
  pdflatex -interaction=nonstopmode "$INPUT_TEX"
  pdflatex -interaction=nonstopmode "$INPUT_TEX"
fi

echo "Done. PDF should be in: $SCRIPT_DIR"
