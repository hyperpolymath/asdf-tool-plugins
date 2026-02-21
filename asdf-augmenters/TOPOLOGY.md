<!-- SPDX-License-Identifier: PMPL-1.0-or-later -->
<!-- TOPOLOGY.md -- Project architecture map and completion dashboard -->
<!-- Last updated: 2026-02-14 -->

# TOPOLOGY -- asdf-augmenters

## System Architecture

```
asdf-augmenters/
├── .machine_readable/              # RSR state files
├── .github/workflows/              # CI/CD
├── contractiles/                   # RSR contractile agreements
├── asdf-acceleration-middleware/   # Performance acceleration layer for asdf
├── asdf-control-tower/             # Centralized management and orchestration
├── asdf-ghjk/                      # GitHub-based plugin management
├── asdf-metaiconic-plugin/         # Metaiconic integration for asdf
├── asdf-plugin-collection/         # Plugin collection management
├── asdf-plugin-configurator/       # Plugin configuration tooling
├── asdf-security-plugin/           # Security scanning and verification
├── asdf-ui-plugin/                 # UI for asdf plugin management
├── README.adoc                     # Overview
└── Justfile                        # Task runner
```

## Completion Dashboard

| Component | Status | Progress |
|-----------|--------|----------|
| RSR Structure | Active | `████████░░` 80% |
| Augmenter Components (8) | Active | `██████████` 100% |
| Documentation | Active | `██████░░░░` 60% |

## Key Dependencies

- RSR Template: `rsr-template-repo`
- Runtime: `asdf` version manager
- Sibling: `asdf-tool-plugins`
