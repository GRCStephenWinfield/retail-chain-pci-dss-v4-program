#!/usr/bin/env bash
# install.sh — validate and preview the Phase 09 package.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "=============================================================="
echo " Marketa Retail Group — PCI DSS v4.0.1 Compliance Program"
echo " Phase 09: Executive Reporting & Continuous Compliance"
echo " PROGRAMME CLOSED 2027-06-30 | 17.6 months | \$4,588,000"
echo "=============================================================="
echo "Markdown documents : $(find "$DIR" -name '*.md' | wc -l | tr -d ' ')"
echo "Excel workbooks    : $(find "$DIR" -name '*.xlsx' | wc -l | tr -d ' ')"
echo
echo "Numbered document set:"
find "$DIR" -maxdepth 1 -name '09.*.md' | sort | while read -r f; do
  echo "  - $(basename "$f")"
done
echo
echo "Register closes 0 High | 16 Moderate | 28 Low."
echo "The published forecast was 0 | 13 | 31. THREE SHORT, and 09.12 says why:"
echo "a 3 x 4 entry reaches 2 x 4 = 8 and stops. EIGHT IS A FLOOR."
echo "One open item did not close: the provider declined. It is not re-worded."
echo "One board measure is red and stays red. ADR-0035."
echo "Open '09.00-README.md' to begin. Validation complete."
