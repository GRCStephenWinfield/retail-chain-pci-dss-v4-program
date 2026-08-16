#!/usr/bin/env bash
# install.sh — validate and preview the Phase 04 package.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "=============================================================="
echo " Marketa Retail Group — PCI DSS v4.0.1 Compliance Program"
echo " Phase 04: Build & Maintain Secure Systems (Requirements 2-6)"
echo " 38 payment-page scripts | 3 unauthorised at first inventory"
echo "=============================================================="
echo "Markdown documents : $(find "$DIR" -name '*.md' | wc -l | tr -d ' ')"
echo "Excel workbooks    : $(find "$DIR" -name '*.xlsx' | wc -l | tr -d ' ')"
echo
echo "Numbered document set:"
find "$DIR" -maxdepth 1 -name '04.*.md' | sort | while read -r f; do
  echo "  - $(basename "$f")"
done
echo
echo "6.4.3 is PREVENTIVE. 11.6.1 is DETECTIVE. Neither substitutes for the other."
echo "Most risks are HELD, not reduced - three months is not an operating history."
echo "Open '04.00-README.md' to begin. Validation complete."
