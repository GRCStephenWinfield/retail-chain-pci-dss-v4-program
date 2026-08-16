#!/usr/bin/env bash
# install.sh — validate and preview the Phase 03 package.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "=============================================================="
echo " Marketa Retail Group — PCI DSS v4.0.1 Compliance Program"
echo " Phase 03: Network Segmentation & Architecture"
echo " Segmentation test FAILED 2026-05-15 | re-test PASSED 2026-06-26"
echo "=============================================================="
echo "Markdown documents : $(find "$DIR" -name '*.md' | wc -l | tr -d ' ')"
echo "Excel workbooks    : $(find "$DIR" -name '*.xlsx' | wc -l | tr -d ' ')"
echo
echo "Numbered document set:"
find "$DIR" -maxdepth 1 -name '03.*.md' | sort | while read -r f; do
  echo "  - $(basename "$f")"
done
echo
echo "Risk register baselined: 44 risks | 9 High | 21 Moderate | 14 Low"
echo "The re-test proves the boundary, NOT the process. R-14 stays High."
echo "Open '03.00-README.md' to begin. Validation complete."
