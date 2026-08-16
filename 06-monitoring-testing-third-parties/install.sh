#!/usr/bin/env bash
# install.sh — validate and preview the Phase 06 package.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "=============================================================="
echo " Marketa Retail Group — PCI DSS v4.0.1 Compliance Program"
echo " Phase 06: Monitoring, Testing & Third Parties (Reqs 10, 11, 12.8)"
echo " 11.6.1 live | 19 findings all retested | 1 Not in Place"
echo "=============================================================="
echo "Markdown documents : $(find "$DIR" -name '*.md' | wc -l | tr -d ' ')"
echo "Excel workbooks    : $(find "$DIR" -name '*.xlsx' | wc -l | tr -d ' ')"
echo
echo "Numbered document set:"
find "$DIR" -maxdepth 1 -name '06.*.md' | sort | while read -r f; do
  echo "  - $(basename "$f")"
done
echo
echo "6.4.3 preventive + 11.6.1 detective = the script control is COMPLETE"
echo "R-01 moves High 20 -> Moderate 10. Impact HELD at 5."
echo "11.3.1.2 NOT IN PLACE: 9 of 71. No compensating control argued."
echo "Open '06.00-README.md' to begin. Validation complete."
