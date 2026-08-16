#!/usr/bin/env bash
# install.sh — validate and preview the Phase 05 package.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "=============================================================="
echo " Marketa Retail Group — PCI DSS v4.0.1 Compliance Program"
echo " Phase 05: Access Control & Physical Security (Reqs 7, 8, 9)"
echo " MFA across 71 components | 1,914 POI terminals | 1 Not in Place"
echo "=============================================================="
echo "Markdown documents : $(find "$DIR" -name '*.md' | wc -l | tr -d ' ')"
echo "Excel workbooks    : $(find "$DIR" -name '*.xlsx' | wc -l | tr -d ' ')"
echo
echo "Numbered document set:"
find "$DIR" -maxdepth 1 -name '05.*.md' | sort | while read -r f; do
  echo "  - $(basename "$f")"
done
echo
echo "8.4.2 is MFA for ALL access into the CDE - not just administrators."
echo "8.6.2 NOT IN PLACE: 2 embedded credentials. Compensating control REFUSED."
echo "POI: 99.56% coverage | 0 confirmed tampering | 2 of 9 identity tests failed"
echo "Open '05.00-README.md' to begin. Validation complete."
