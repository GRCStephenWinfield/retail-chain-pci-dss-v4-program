# MANIFEST — Phase 02: CDE Scoping & Cardholder Data Discovery

| Field | Value |
|---|---|
| Package | retail-chain-pci-dss-v4-program-02-cde-scoping-cardholder-data-discovery.zip |
| Version | 1.0.0 |
| Generated | 2026-07-15 |
| Entity | Marketa Retail Group, Inc. (Level 1 merchant) |
| Regulator | Cardinal Merchant Bank / PCI SSC card brands |
| Scope | PCI DSS v4.0.1 · NIST CSF 2.0 |
| Summary | 1,842 systems scanned · 4 unexpected PAN locations · scope 604 to 71 (-88.2%) · 2 assumptions disproved · R-31 raised on evidence |
| Total files | 39 |

## File Inventory (SHA-256)

| # | File | Bytes | SHA-256 |
|---|---|---|---|
| 1 | `02.00-README.md` | 10,454 | `5dc25cca8e85189e250a56d8ff8e7744d121a5f93b7463f2edef104861758ce5` |
| 2 | `02.01-scoping-methodology.md` | 27,399 | `623a383545476788552dd570b3004b789c43b6aa196b62d98ad2d7f7733ccb15` |
| 3 | `02.02-cardholder-data-discovery.md` | 27,369 | `f3b5fa9416ae624dd5295ada8220d5c831a183f045cec472f3ab7f7977bcb194` |
| 4 | `02.03-unexpected-pan-locations-and-response.md` | 44,182 | `6d53a55ede13a53d50fd7929625ca6a6d140492fc6ab275fef62ef7dbf7bbb72` |
| 5 | `02.04-card-present-channel-scope.md` | 27,925 | `7cb581042fa4d9d7624f7b0e2f55c49b76c57e9102392f31be256420e4defa59` |
| 6 | `02.05-ecommerce-channel-scope.md` | 28,654 | `26f6a56454986cf34cd3faa3fcc1e7be17c687158d03c2d92bd6ccb9c2742d10` |
| 7 | `02.06-call-centre-moto-channel-scope.md` | 24,134 | `a32a9c8eaf268fb819fc40f614a71b1eef35fad3801def9b78c695538b671e49` |
| 8 | `02.07-data-flows-and-network-reachability.md` | 39,174 | `3a3fb5a75cebb179d5dcb9673983d642b9fddf7ed6547331a2ab6bb8e0494b93` |
| 9 | `02.08-connected-to-and-security-impacting-systems.md` | 40,246 | `234fe10c8c1f467de1102e51b3b7189cc8661841380eeb4729b71247dbfcc30a` |
| 10 | `02.09-assessed-system-component-inventory.md` | 27,689 | `67bdf74a61b12430c988eb002da750d6dc65e13c058982979a6872c28b7ba73f` |
| 11 | `02.10-scope-reduction-analysis.md` | 30,012 | `fca1e5eb7e41ecbe9fae0ca217282eb6888c0688504ba1d897913d6c4000a34f` |
| 12 | `02.11-assumption-test-results.md` | 27,937 | `ce93e1e6ec5c4ac682dfe5b0e0061ca1d369ba43b95c529f4029b83aa4abb892` |
| 13 | `02.12-scope-validation-and-phase-summary.md` | 22,801 | `933b1b4252fe1e69c4ce551a09099686db15e267269b6a2b60c6bc477c2237de` |
| 14 | `CHANGELOG.md` | 6,810 | `6a640d34374a8889af46917492e01e1f6a34e7c9deab9a1d51a92caada2f76b4` |
| 15 | `STRUCTURE.md` | 2,943 | `d846887582f1ca5b49866aefff9ca6fb25a45a33da0a048e066f083231610e18` |
| 16 | `install.sh` | 998 | `f53fafe2b76da0507c53425c0fd2f2b09196a1cb10daace2b09de040369d571a` |
| 17 | `adr/ADR-0005-raise-risk-on-disproved-assumption.md` | 3,164 | `fa498663a6c0854fc05548ee63a7965584aa490b2a21c0d4b2b0c7fe470d7bec` |
| 18 | `adr/ADR-0006-store-estate-classification.md` | 3,331 | `637a1eb4d90fcc7781f6724e78ad8e5004444a8ca6ffd985c68ea6192e7b1053` |
| 19 | `adr/ADR-0007-scan-everything-not-a-sample.md` | 2,769 | `53ce79d71889664b12eaedb7cc092a850830acb2a3faa20e3c0d3db1dfd7f828` |
| 20 | `adr/README.md` | 863 | `27aaa64460c47d3464386ef4213bfddcbddc1ae07ef060816900fe5a5e6e7412` |
| 21 | `diagrams/account-data-flows.md` | 1,927 | `5f491874384a6ef288ea8b43d0a0cea9e3e36b3fd89cf1458d4f00686c463b65` |
| 22 | `diagrams/scope-reduction-waterfall.md` | 1,154 | `cf321673857a456573ad833d01d757313f0e3d49508af26bb2f313b00da33c03` |
| 23 | `diagrams/scoping-decision-tree.md` | 1,669 | `571210c9a835d8145e8375767db9c67401b01b1128ad499564d4c0e701cf7b46` |
| 24 | `diagrams/unexpected-pan-locations.md` | 1,849 | `9d1ba6e977222cf02f8c701dd48f9b4a506f62300aa3750253e1019877da2cdc` |
| 25 | `governance/pan-finding-escalation-record.md` | 2,851 | `e9c69f884e063dd9ef245b681a911f3304f8627f698364511a91a629f4be2df0` |
| 26 | `governance/qsa-scope-review-record.md` | 2,581 | `bc419cc627801341ea3751b243a729f8581ba472808d9c5dd64638acaa793e97` |
| 27 | `governance/scope-determination-review.md` | 2,806 | `14b2978a88ca1338ac26f691eff818833f8861b6efaeb916f1a0f059d870af6a` |
| 28 | `logs/action-item-log.md` | 1,604 | `d347a17f0820d9e374c5ed870e21c073bae414ea3c8e4f97ec54f26b1f9b2efc` |
| 29 | `logs/decision-log.md` | 2,335 | `4b87149ed1216410c9f28deb8685502bf0edb6559b349de0d5e71dccf22e13c3` |
| 30 | `logs/raid-log.md` | 2,348 | `05ee7ca7e6745d731c5dd61125841cb405c569a5eba63a67bf19049c083da10f` |
| 31 | `logs/risk-log.md` | 1,659 | `8b7fb32fc53128c665cf93a44bb1888c25299cf380e1310470e872d170fdd949` |
| 32 | `templates/data-flow-documentation-template.md` | 1,624 | `a34635ce1e7300b591e341afd87c988741553fc30e957643301c72dc0ae88b77` |
| 33 | `templates/pan-discovery-finding-template.md` | 2,148 | `e3f6880d84ac4c32d341ce620915d64c525322d3349f93515194edea0cd6563b` |
| 34 | `templates/scope-condition-register-template.md` | 1,477 | `36566d5433ca0f28357293050d94a4e8e0a5f983d6f42297af9f88359d46e118` |
| 35 | `trackers/assessed-component-inventory.xlsx` | 14,389 | `ed6f4178ad92d57106c97f322f82534bdecfc1d0c0bc3f286432808d940e2244` |
| 36 | `trackers/assumption-and-question-disposition.xlsx` | 10,771 | `c4c55b117bbd972f303e1325e7b07d2b22e050ff09ee2e22211deaae122a416a` |
| 37 | `trackers/pan-discovery-findings.xlsx` | 8,869 | `a854bffd98273552847080ba16474a592a09fca3e4725a27411177556a7c157c` |
| 38 | `trackers/scope-reduction-analysis.xlsx` | 9,106 | `a39ea55ae0b611941dd651969e73fdab6ff70180ebf2cc722326b4bd6fbc1f1c` |

**Total payload:** 470,021 bytes across 38 files (plus this manifest).

