# MANIFEST — Phase 03: Network Segmentation & Architecture

| Field | Value |
|---|---|
| Package | retail-chain-pci-dss-v4-program-03-network-segmentation-architecture.zip |
| Version | 1.0.0 |
| Generated | 2026-07-15 |
| Entity | Marketa Retail Group, Inc. (Level 1 merchant) |
| Regulator | Cardinal Merchant Bank / PCI SSC card brands |
| Scope | PCI DSS v4.0.1 · NIST CSF 2.0 |
| Summary | Segmentation test FAILED 2026-05-15, re-test PASSED 2026-06-26 · R-14 raised · 44-risk register baselined at 9 High / 21 Moderate / 14 Low |
| Total files | 39 |

## File Inventory (SHA-256)

| # | File | Bytes | SHA-256 |
|---|---|---|---|
| 1 | `03.00-README.md` | 9,429 | `0bc89c2c68fffa9890373d4f5e6e9ec794f586ce261c63bea4b98776ff98377a` |
| 2 | `03.01-segmentation-strategy-and-principles.md` | 23,874 | `90eabaa6d9ca7a85e35e697685b3ef336618cec58b764dd25f0aa4f78331d4ff` |
| 3 | `03.02-nine-zone-architecture.md` | 27,457 | `3ac3138d33cfdccfee734ac1191037ebc4c84cfcdf53b8a15d00f14e8e29173b` |
| 4 | `03.03-network-security-control-standards.md` | 34,223 | `c8f1c2af7addb7277e936af2ce1b3d3acbe87beeee86f6c6b69b6062aebcb941` |
| 5 | `03.04-store-network-architecture.md` | 27,954 | `f1fc2c7f57abf543cc579f2a52688cce1f9481a4a85bed3aebd855d3726bb191` |
| 6 | `03.05-cloud-segmentation.md` | 27,039 | `976974f1551039eb08bf125bcade90cb015550f5e2ba1362654b585190fa1a65` |
| 7 | `03.06-wireless-security.md` | 25,936 | `004d5d27504c25bd15d1f446123a7e7342401d7071515aaef20101d0e6afd577` |
| 8 | `03.07-segmentation-penetration-test.md` | 39,487 | `fc8377e769c98ee6310d4ac17ecc1e217332d96061261e2d56a767e2c04b236d` |
| 9 | `03.08-remediation-and-retest.md` | 41,518 | `67bb99b30dcad9ce4d9b81ca26193eaf85563318061fbcd789aff9b3341dead4` |
| 10 | `03.09-nsc-ruleset-governance.md` | 35,196 | `bcea9b3ad227e64b06fe79d9bd2ab95fcd538ba7beadb6e7d12cb6c2aecb2636` |
| 11 | `03.10-risk-assessment-methodology.md` | 28,300 | `b8d8ce47e837b08fb5948225777723b82c5204bc8f4419a4f2110a4d7491d4e6` |
| 12 | `03.11-risk-register.md` | 27,368 | `467bd98e784c14d48271e0f457e16868c6169b05cdc0892bd070bfb2f6c3228c` |
| 13 | `03.12-control-to-risk-traceability.md` | 39,179 | `6b48471eaafac0c3ba602bf97abd80956f665b42b31e749bfdf95a1a2b29c455` |
| 14 | `03.13-phase-summary-and-transition.md` | 27,679 | `93e5c49048cb402eda757f319247d26225d38b7e701de997ed08d8081724ea28` |
| 15 | `CHANGELOG.md` | 6,046 | `06ef778bb1982c43098ff05d6e9e3a31323fe77a67695551fe9d740bc4ca36e5` |
| 16 | `STRUCTURE.md` | 2,933 | `f3ec4204849dba3ba95fcdefe065b93f51b7b3f47ed5c2fb5a6805172f129dbc` |
| 17 | `install.sh` | 989 | `e594075ebc1695c6b38408107acdcf42e6ac6e739c84e08582bc9563098a27cc` |
| 18 | `adr/ADR-0008-continuous-drift-detection.md` | 3,170 | `2f6eeb5969721ee7cb4bf69f8acce89c1006920db61988e4e24b0c79d31039b5` |
| 19 | `adr/ADR-0009-test-the-messy-estate.md` | 2,549 | `552824b3640dc15d4f8963705a8553fd83dd72d072700c802f6fe1b00fb3755c` |
| 20 | `adr/README.md` | 1,048 | `a6b5725a5cd6beae3f463340a0c5fdc5fc311199a331aff16f0d6c205ac4051a` |
| 21 | `diagrams/nine-zone-architecture.md` | 2,013 | `602d6c92bb043f0910add54fab612f750acaab5f285deb3587779b048b288c5e` |
| 22 | `diagrams/remediation-and-retest.md` | 1,822 | `4f9403ea2a793cda530b75ee19a71bc23e3a38837f7d7d5a23efff944650dc2d` |
| 23 | `diagrams/risk-register-baseline.md` | 1,539 | `cd53936e710ba6c7424f1fbc800b7fdf6f1c0f93081f01f4db98a7c938f66382` |
| 24 | `diagrams/segmentation-failure-path.md` | 1,645 | `644d77f75a11cbefb76686a73c99f12aa09006e7db4056fc6b316b296fea7a70` |
| 25 | `governance/risk-register-approval.md` | 2,724 | `ed40d0e9b0858c89a07c3eb8bcdd318fd8ac2f0bcfd41dc0924fadaa77841006` |
| 26 | `governance/segmentation-test-readout.md` | 2,614 | `b574261376da35e4a005f94115c9b99df84f6de7cbcdbc14a0ac70f56ab75695` |
| 27 | `governance/steering-committee-extraordinary-session.md` | 3,185 | `3036106f55c35cf7cbcd67cf7b137817d380b0a1be2c31c0d6708e5cb948e202` |
| 28 | `logs/action-item-log.md` | 1,730 | `96eefaa3b44053bdffb93555384d89794fb69c3da5d1f3162fc9823e7cea1ccb` |
| 29 | `logs/decision-log.md` | 2,642 | `d53c42c7399cc5b5e0bf060867fc70c89246d7ffd1936419ded96ebdff2ab862` |
| 30 | `logs/raid-log.md` | 2,742 | `5aaa9b3f539056ff2b6de32b95f46bfbffb817401f754a8c4b99b69f8a747418` |
| 31 | `logs/risk-log.md` | 1,683 | `80347ddf0623f5b29803717bbd5be6e9361eb1388f058307148ce8d85f71f74b` |
| 32 | `templates/network-change-request-template.md` | 2,028 | `39789a3a11c8b71c2c79c31febc3fa0b82529b4ede7f156aa52923aa73e1955b` |
| 33 | `templates/risk-register-entry-template.md` | 1,645 | `07e5afe2c23b4e68ad7f2fe4dae7652480bfc4570aac21e7d6a6e7fbd3f67390` |
| 34 | `templates/segmentation-test-scope-template.md` | 2,093 | `fc95aeb9182346cf5bd1d9da390055d9c2d38176681a34765c4e267ae590d821` |
| 35 | `trackers/control-risk-traceability.xlsx` | 15,542 | `3ddf8539f787747179cb52ea0a990071ed5e172e7af8c09ed3db2ca66e4d1e38` |
| 36 | `trackers/risk-register.xlsx` | 17,665 | `203ee09f191068cd9720a5142629bd5f5a06b54eb770d4cc1456fa0d8b1a7470` |
| 37 | `trackers/segmentation-test-findings.xlsx` | 10,028 | `8cf9b70318ff2150f8b1256b87f887949567290df3d17ceef451554640f32b9b` |
| 38 | `trackers/zone-architecture.xlsx` | 7,107 | `3be4b7e37c495939ee4ae6542e9c180b0fa52d1d72ce4def4895c460e52c850b` |

**Total payload:** 511,821 bytes across 38 files (plus this manifest).

