# MANIFEST — Phase 04: Build & Maintain Secure Systems

| Field | Value |
|---|---|
| Package | retail-chain-pci-dss-v4-program-04-build-maintain-secure-systems.zip |
| Version | 1.0.0 |
| Generated | 2026-07-15 |
| Entity | Marketa Retail Group, Inc. (Level 1 merchant) |
| Regulator | Cardinal Merchant Bank / PCI SSC card brands |
| Scope | PCI DSS v4.0.1 · NIST CSF 2.0 |
| Summary | Requirements 2-6 across 71 components · 38 payment-page scripts, 3 unauthorised at first inventory · 6.4.2 supersedes 6.4.1 · most risks HELD not reduced |
| Total files | 39 |

## File Inventory (SHA-256)

| # | File | Bytes | SHA-256 |
|---|---|---|---|
| 1 | `04.00-README.md` | 10,666 | `376389d10cea51844fa8035f97405b95852b2e086365367419932ee9436edb98` |
| 2 | `04.01-secure-configuration-standards.md` | 32,699 | `1b1b76a2b0e35e336448ccb97d512a05b747cc80cf080fef02d7d35e2ed5969f` |
| 3 | `04.02-protect-stored-account-data.md` | 31,664 | `389ea0c202a51dcbc4f9185cfbf2feb95cab14a3af5455d32c16845b6317aef8` |
| 4 | `04.03-cryptographic-key-management.md` | 32,141 | `d3b58ef81019b451ecf0e60b01905024c943c480405368fba9a0748e58e5541a` |
| 5 | `04.04-transmission-security.md` | 26,922 | `85c4eb538c851ce87b65f0a7420dd9bbb2e299a54e25070ea85e0709c7355ed0` |
| 6 | `04.05-anti-malware-and-phishing.md` | 30,549 | `c9331cabb5f0b85f7c1d0da0c36290da5bf9b1a636515a28ad602f803a434ea7` |
| 7 | `04.06-vulnerability-management.md` | 27,475 | `a01e811569d7fc2082f9bfcbed5833a54e1e6789e621120e17b2b00c0e050af1` |
| 8 | `04.07-secure-software-development.md` | 32,140 | `fe6fa2fa3e7ce1978c472acdd267f959e131546644bb66baac847029b3e88d71` |
| 9 | `04.08-change-control.md` | 38,851 | `bea0c8bded109e8537b6d23b816734a93a4017a038d71b6f4b2a0cb832e4e6d0` |
| 10 | `04.09-public-facing-application-protection.md` | 30,132 | `c142b6e1a46e86732ebbb2c26b8c370d2bfd208757908dc1cd9a9005d7d69789` |
| 11 | `04.10-payment-page-script-management.md` | 49,386 | `45660c12f9dcda2ccb23bb56f590b5b682b445a5ea0031f0bf7075a3e15d564a` |
| 12 | `04.11-configuration-baseline-compliance.md` | 27,682 | `e4e3e40b8e941eaa69fa60c61801f59b670d480ed9168e3db6adbf8850a707b1` |
| 13 | `04.12-control-to-risk-traceability.md` | 32,716 | `87ec03db602150d4e0a85800709f6f7851753e409d605cb087a327c2dd6054fe` |
| 14 | `04.13-phase-summary-and-transition.md` | 33,286 | `d5242e279ddd38888430872aa461cb424622b40b584764f0a678cab3c7603140` |
| 15 | `CHANGELOG.md` | 7,077 | `9bc40e28ad9cb2802da9fc770c6719d6c1270e4f78a9c4a531bd81ee6fa9829d` |
| 16 | `STRUCTURE.md` | 2,983 | `908915e6581fd71833d9fadc56d14ee57f21f89fa21aa51d6c1bf004ee4cbe06` |
| 17 | `install.sh` | 1,021 | `01795983e6b8e51cb3d106944e6901dade0f6d283a67b1f6b3e16672fbd11797` |
| 18 | `adr/ADR-0010-6-4-2-supersedes-6-4-1.md` | 2,809 | `85ed8d79c660bc7d8a0e319d273c34755797442331ece93eb26a35e8d77778d0` |
| 19 | `adr/ADR-0011-remove-the-capability-not-govern-it.md` | 3,062 | `ff92178e798669c8b4536ad911827d3fce7ec0380e05a716915fff5a2f1d31a0` |
| 20 | `adr/ADR-0012-measure-deployed-state-not-documents.md` | 3,139 | `41d6303ac9347e6a042199e46371b3ddf56d7fd7ca56cc7628b858b24b97db46` |
| 21 | `adr/README.md` | 1,120 | `54dce3c0f952561af1b8293b6734e1bb1baad393012daa929ab070327a98bc89` |
| 22 | `diagrams/change-control-flow.md` | 1,853 | `66465fe6ef5394a6c7791bff251c381a999862df2585a9fd6b4d5fcbd1525bc7` |
| 23 | `diagrams/payment-page-script-control.md` | 1,977 | `270e05406269c039127fba389d9fd9dd87ca00b27eeec331f2d9f1a2b89e24f0` |
| 24 | `diagrams/requirement-coverage-map.md` | 1,829 | `1116124471a9d320e74699f60996330ea4898614fa6cda34c6fadd7ee48c3957` |
| 25 | `governance/change-advisory-board-minutes.md` | 2,519 | `2dd44f8eeb0febb0064a9bdeb1b2195e0f257ae7542ac436574f397b94965f84` |
| 26 | `governance/script-inventory-review.md` | 2,740 | `6c6261d808dedf3022864ddb72e238f77d4f0e3d74099f332b4f561e4b992757` |
| 27 | `governance/secure-development-review.md` | 2,062 | `fea99051294213f90381d0bc7ccdf95dd33b482a43d8839d0ff5bb3e664f3fd6` |
| 28 | `logs/action-item-log.md` | 1,819 | `9872337817ca879ea0d70d45f38c2cae2765a471d199bb8bfd7196fa34a14923` |
| 29 | `logs/decision-log.md` | 2,818 | `801516f56b695b37470c0f8b6fe4369784dbab7888ed25e94b0bca4dbe6c060d` |
| 30 | `logs/raid-log.md` | 2,743 | `810589216cf7cdfd4a54ceb849a3551493098cb864a423e8dddda66e609d1648` |
| 31 | `logs/risk-log.md` | 2,466 | `ef3e0e3cc039eecc4765b1cde241ddc633ae0bf3c2c161c5dee6fdba869c54eb` |
| 32 | `templates/configuration-baseline-template.md` | 2,203 | `17576211e6b2f2c14dd614b1aded4cca0d3658964987a0cc3d13bce4247798ce` |
| 33 | `templates/script-authorisation-request-template.md` | 2,067 | `d5346042d421a97a11de207921ffc93e5eb2e95e8ec38fe390c7302f1c2ae8cf` |
| 34 | `templates/significant-change-assessment-template.md` | 2,080 | `8187346f82544a5705898d35aba2d57e26e9b3c0171e434b58bc6b239d78c036` |
| 35 | `trackers/configuration-baselines.xlsx` | 9,666 | `f382cc5c10819b15eaa2ec2c8a8ee936048e01880d67189b3a839d150266001a` |
| 36 | `trackers/control-risk-traceability.xlsx` | 9,619 | `3f765e728da1394fd9c031908f92ac6c9a0a36df8c9a3b995128b25640eaefa3` |
| 37 | `trackers/payment-page-script-inventory.xlsx` | 14,544 | `af58d59637a9e4d9b79acd1e40c5b6f1444abc5ad397896f577e6440b7f4c58b` |
| 38 | `trackers/significant-change-register.xlsx` | 8,420 | `042cfab76df150060c485310dce90e4bfcfc1c9fd659674d71305b29ee5531b8` |

**Total payload:** 528,945 bytes across 38 files (plus this manifest).

