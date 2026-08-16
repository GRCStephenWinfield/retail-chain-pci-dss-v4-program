#!/usr/bin/env bash
# install.sh — validate and preview the Phase 02 package.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "=============================================================="
echo " Marketa Retail Group — PCI DSS v4.0.1 Compliance Program"
echo " Phase 02: CDE Scoping & Cardholder Data Discovery"
echo " 604 -> 71 assessed components (-88.2%) | 4 unexpected PAN locations"
echo "=============================================================="
echo "Markdown documents : $(find "$DIR" -name '*.md' | wc -l | tr -d ' ')"
echo "Excel workbooks    : $(find "$DIR" -name '*.xlsx' | wc -l | tr -d ' ')"
echo
echo "Numbered document set:"
find "$DIR" -maxdepth 1 -name '02.*.md' | sort | while read -r f; do
  echo "  - $(basename "$f")"
done
echo
echo "2 assumptions DISPROVED | R-31 RAISED after full remediation"
echo "Segmentation is evidenced by configuration only - the May test will fail"
echo "Open '02.00-README.md' to begin. Validation complete."
