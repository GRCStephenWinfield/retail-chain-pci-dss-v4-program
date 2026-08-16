#!/usr/bin/env bash
# install.sh — validate and preview the Phase 01 package.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "=============================================================="
echo " Marketa Retail Group — PCI DSS v4.0.1 Compliance Program"
echo " Phase 01: Program Foundation & PCI Governance"
echo " Level 1 merchant | 68.4M transactions | 306 applicable requirements"
echo "=============================================================="
echo "Markdown documents : $(find "$DIR" -name '*.md' | wc -l | tr -d ' ')"
echo "Excel workbooks    : $(find "$DIR" -name '*.xlsx' | wc -l | tr -d ' ')"
echo
echo "Numbered document set:"
find "$DIR" -maxdepth 1 -name '01.*.md' | sort | while read -r f; do
  echo "  - $(basename "$f")"
done
echo
echo "604 systems believed in scope is a HYPOTHESIS | Phase 02 tests it"
echo "Open '01.00-README.md' to begin. Validation complete."
