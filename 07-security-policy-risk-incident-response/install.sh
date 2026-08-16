#!/usr/bin/env bash
# install.sh — validate and preview the Phase 07 package.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "=============================================================="
echo " Marketa Retail Group — PCI DSS v4.0.1 Compliance Program"
echo " Phase 07: Security Policy, Risk & Incident Response (Req 12)"
echo " 14 targeted risk analyses | entering assessment at 2 High"
echo "=============================================================="
echo "Markdown documents : $(find "$DIR" -name '*.md' | wc -l | tr -d ' ')"
echo "Excel workbooks    : $(find "$DIR" -name '*.xlsx' | wc -l | tr -d ' ')"
echo
echo "Numbered document set:"
find "$DIR" -maxdepth 1 -name '07.*.md' | sort | while read -r f; do
  echo "  - $(basename "$f")"
done
echo
echo "R-14 and R-31 came down on exit criteria published SIX MONTHS EARLIER."
echo "12.10.7's third limb - how did it get there - is the requirement."
echo "2 Not in Place findings, dated 2027-01-31. No float. Stated, not disguised."
echo "Open '07.00-README.md' to begin. Validation complete."
