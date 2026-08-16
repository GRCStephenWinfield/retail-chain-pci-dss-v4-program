# MANIFEST — Phase 06: Monitoring, Testing & Third Parties

| Field | Value |
|---|---|
| Package | retail-chain-pci-dss-v4-program-06-monitoring-testing-third-parties.zip |
| Version | 1.0.0 |
| Generated | 2026-07-15 |
| Entity | Marketa Retail Group, Inc. (Level 1 merchant) |
| Regulator | Cardinal Merchant Bank / PCI SSC card brands |
| Scope | PCI DSS v4.0.1 · NIST CSF 2.0 |
| Summary | 11.6.1 completes the script control · R-01 High 20 to Moderate 10 · 19 findings all remediated and independently re-tested · Q1 ASV FAILED and was reported as a failure · 1 Not in Place (11.3.1.2) · ADR-0020 to ADR-0025 |
| Total files | 42 |

## File Inventory (SHA-256)

| # | File | Bytes | SHA-256 |
|---|---|---|---|
| 1 | `06.00-README.md` | 12,792 | `a8ace7a79638d4e5d856545b0e28dca7e65d89831731f0a60b62eba27fc50069` |
| 2 | `06.01-logging-strategy-and-architecture.md` | 32,651 | `524f1ffe49b85490fb2a8dca183424cbf8afc3d065844755369564b2db503712` |
| 3 | `06.02-log-retention-and-protection.md` | 27,417 | `db10b711ee0580ab780e37cf7a0e1d066c5dfc479747498e24fd8cdff8b1815d` |
| 4 | `06.03-automated-log-review.md` | 39,520 | `e3d6cf064a63fe0d92db3cf965e920abd93e0f43d0d1db4a970245b6539801df` |
| 5 | `06.04-time-synchronisation-and-failure-detection.md` | 31,572 | `97599216a4861895c6170537e14b16be655d9b721c764632a22cc32c4ebfcd35` |
| 6 | `06.05-vulnerability-scanning.md` | 38,776 | `987d39c0a0da114fbde6c7549139d07153ad38f4d886b545bc2548f6bdfded4e` |
| 7 | `06.06-asv-scanning.md` | 23,806 | `3d99f55ae0f4ba8072879e663db5f355b87c84c5663351637fdb660be952f73f` |
| 8 | `06.07-wireless-and-intrusion-detection.md` | 32,194 | `3c0e57fc812fea36434524cbfae46a4a44c26ca8964f7f2e1713065028e88b2a` |
| 9 | `06.08-application-penetration-test.md` | 53,201 | `fe68bd8794853930c98e31f55cd96abd074a11719358c751d62006a9fa3a19a0` |
| 10 | `06.09-payment-page-tamper-detection.md` | 64,646 | `a8035404485f4eba7634b8568c3037e7399074b20a721bf9daaa465ddc7b47d7` |
| 11 | `06.10-third-party-service-provider-management.md` | 62,873 | `8d8d4b6e793fb7eefdae46af5a89360f75e6bdbb5a988a513b3ce737efbea386` |
| 12 | `06.11-security-testing-programme.md` | 33,440 | `637b56a2b514ef17c028b29cc0cb6759d9d73e321b6e446ce0cc7818f5c35f4e` |
| 13 | `06.12-control-to-risk-traceability.md` | 34,428 | `b78dcfc941aa2ea454d09ba434f902e3e4dab55d11b609f942ded89bcd7b8d21` |
| 14 | `06.13-phase-summary-and-transition.md` | 36,590 | `18661002d32d65b109a7e097ff726adea93681b7e3129e7c338548e13b7b10fe` |
| 15 | `CHANGELOG.md` | 8,215 | `41653276a3e7a1cbeddf2d23e64bae6701fc59c416e8476c7b1c1ea7113991bb` |
| 16 | `STRUCTURE.md` | 3,332 | `eba817b8a37822690b39cbaefaaa94484c73ef62b313a674d5791d932ff8f288` |
| 17 | `install.sh` | 1,061 | `58e9aecda8623016c5bc88ee0ea809f240b91fa2b117b2cd84434cdadafaaff1` |
| 18 | `adr/ADR-0020-the-finder-re-tests-not-the-fixer.md` | 3,514 | `7adc993dc5c876a1b347f0bccef7a25e14c637ec6a7f989ab161993ae08c9c76` |
| 19 | `adr/ADR-0021-evaluate-what-the-customer-received.md` | 3,179 | `853ecf12e39c4713072bed41839e00e3274d07391db72894f694d104b39b12ec` |
| 20 | `adr/ADR-0022-silence-is-a-defect-not-a-success.md` | 2,906 | `a13b125bb514966678d11f4d0f0e88ecc357da8552ee9a88afa2f1fb7dccb457` |
| 21 | `adr/ADR-0023-provider-evidence-is-graded.md` | 9,285 | `07447a2bb43e5ef718daa08097fab8bde4f6270dc43dc79b187a57301ad19060` |
| 22 | `adr/ADR-0024-monitoring-tiered-above-the-annual-floor.md` | 10,220 | `6d0b9bfb6dcb178a9b0adcd57206a71ad6ff93aeeb4d7801d74f95252b51136e` |
| 23 | `adr/ADR-0025-hold-the-risk-until-the-control-is-complete.md` | 9,862 | `37241204876d40d734e87733363c19d0848e40280760708f16d8cc02a215c8e0` |
| 24 | `adr/README.md` | 2,599 | `64f92ac2e5053a794cab8b04267a37406c261ff4ace97aa921a65f9af05e2208` |
| 25 | `diagrams/script-control-completes.md` | 1,894 | `1e3f395824736495e34637840fb6df300bbd281b0a290c4c0158f02153414553` |
| 26 | `diagrams/testing-programme.md` | 1,920 | `9b0ad927dd51a17a491bf2691dc75a827512bd1c62ac2ffafc46a68c24d82297` |
| 27 | `diagrams/third-party-assurance.md` | 2,051 | `65947d92cd795577a31024d9ab21220db325956e7465ff61ff12f6c648ec729c` |
| 28 | `governance/penetration-test-readout.md` | 2,492 | `3749ea96eaae0487186a459dab5ff2e317498750825e46bdb3a57d858c5bce73` |
| 29 | `governance/tamper-detection-go-live.md` | 2,924 | `60c0e442214c5429fefc534e855896d2985b24853dbaafea2ce7ab8bdddb4119` |
| 30 | `governance/tpsp-annual-review.md` | 2,588 | `9e1fb197a97810c432ece69e1ada5e81a2ec05da5a1b90e1cb6dd78f10235ce0` |
| 31 | `logs/action-item-log.md` | 1,827 | `b6b9b42067c7f0dc64700a5932e956c6eec1ff4b032644d469d84854a3128438` |
| 32 | `logs/decision-log.md` | 3,221 | `797236f645dfeb6bdb5e6cd7a876fd2671f6e5d2a0a469a7016a012399921de2` |
| 33 | `logs/raid-log.md` | 2,982 | `b6a5eb9fa1af84d49281aab94b1bc097833f10aff67cc4d03433ff988e35d33d` |
| 34 | `logs/risk-log.md` | 2,878 | `0b2c9d10ad58a04dface04ed6bd5a554ef8e784b787db769028a294fb0f77722` |
| 35 | `templates/detection-rule-template.md` | 1,539 | `bb253a5f35e97793da896ce6a98f1adaab697416368c4778f779e96289bef5e3` |
| 36 | `templates/penetration-test-finding-template.md` | 1,783 | `ee70b765d08e104d77bdd5d923aca765c204ef799995391b3b143e53df1ef919` |
| 37 | `templates/tpsp-responsibility-matrix-template.md` | 1,953 | `aa8ecf07fa11b27e2ebec2850a7079c43ad32d49cee237a4e756f9c1a85d59c2` |
| 38 | `trackers/asv-scan-results.xlsx` | 7,342 | `ff7dbf62f92f81bb6cd38f8eaa1e0baa9363dd1c4ee327588b21ea70efe43247` |
| 39 | `trackers/penetration-test-findings.xlsx` | 10,709 | `19269927135db552a67fec871d2321ec820bc575bde9ce3e34dc5cbc12cdc46d` |
| 40 | `trackers/risk-movement-and-script-control.xlsx` | 9,506 | `dd5f57b946df9f729c0dccdc2b4a0c84626d1d88b63005ce35f0569821f7f493` |
| 41 | `trackers/tpsp-register.xlsx` | 9,646 | `27a87acea738746f0b3365f0c06811acc3045766034a7381640085ebf4cb73ef` |

**Total payload:** 645,334 bytes across 41 files (plus this manifest).

