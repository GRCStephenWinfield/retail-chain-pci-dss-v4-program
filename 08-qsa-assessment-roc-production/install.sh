#!/usr/bin/env bash
# install.sh — validate and preview the Phase 08 package.
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "=============================================================="
echo " Marketa Retail Group — PCI DSS v4.0.1 Compliance Program"
echo " Phase 08: QSA Assessment & ROC Production"
echo " 306 assessed | 297 In Place | 3 CCW | 4 N/A | 0 NT | 2 NOT IN PLACE"
echo "=============================================================="
echo "Markdown documents : $(find "$DIR" -name '*.md' | wc -l | tr -d ' ')"
echo "Excel workbooks    : $(find "$DIR" -name '*.xlsx' | wc -l | tr -d ' ')"
echo
echo "Numbered document set:"
find "$DIR" -maxdepth 1 -name '08.*.md' | sort | while read -r f; do
  echo "  - $(basename "$f")"
done
echo
echo "Fieldwork 2026-11-02 to 11-20. ROC and AOC issued 2026-12-11, NON-COMPLIANT."
echo "Neither finding was discovered by the assessor. Both were on the register first."
echo "Remediation removed the finding, not the constraint. CCW-01 and CCW-02 survive."
echo "The 2026 attestation is NOT withdrawn. The revised one is additive."
echo "Open '08.00-README.md' to begin. Validation complete."
