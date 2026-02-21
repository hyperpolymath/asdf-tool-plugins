<!-- SPDX-License-Identifier: PMPL-1.0-or-later -->
<!-- TOPOLOGY.md — Project architecture map and completion dashboard -->
<!-- Last updated: 2026-02-19 -->

# asdf Tool Plugins — Project Topology

## System Architecture

```
                        ┌─────────────────────────────────────────┐
                        │              DEVELOPER / CLI            │
                        │        (asdf plugin add <name>)         │
                        └───────────────────┬─────────────────────┘
                                            │
                                            ▼
                        ┌─────────────────────────────────────────┐
                        │          PLUGIN COLLECTION HUB          │
                        │                                         │
                        │  ┌───────────┐  ┌───────────────────┐  │
                        │  │  Language │  │  Infrastructure   │  │
                        │  │  Plugins  │  │  Plugins          │  │
                        │  │ (Ada, OCaml,│  │ (Envoy, Varnish,  │  │
                        │  │  Zig, etc.) │  │  Coredns, etc.)   │  │
                        │  └─────┬─────┘  └────────┬──────────┘  │
                        │        │                 │              │
                        │  ┌─────▼─────┐  ┌────────▼──────────┐  │
                        │  │  Storage  │  │  Security         │  │
                        │  │  Plugins  │  │  Plugins          │  │
                        │  │(ArangoDB, │  │ (Cosign, Age,     │  │
                        │  │ MariaDB)  │  │  Sops, etc.)      │  │
                        │  └─────┬─────┘  └────────┬──────────┘  │
                        └────────│─────────────────│──────────────┘
                                 │                 │
                                 ▼                 ▼
                        ┌─────────────────────────────────────────┐
                        │          EXTERNAL TOOL SOURCES          │
                        │      (GitHub Releases, CDN, etc.)       │
                        └─────────────────────────────────────────┘

                        ┌─────────────────────────────────────────┐
                        │          REPO INFRASTRUCTURE            │
                        │  .bot_directives/   Justfile            │
                        │  contractiles/      .github/workflows/  │
                        │  .machine_readable/ (STATE.a2ml)        │
                        └─────────────────────────────────────────┘
```

## Completion Dashboard

```
COMPONENT                          STATUS              NOTES
─────────────────────────────────  ──────────────────  ─────────────────────────────────
PLUGIN CATEGORIES
  Language Plugins (Zig, V, Deno)   ██████████ 100%    All major runtimes active
  Infrastructure (Envoy, Proxy)     ████████░░  80%    Scaling logic verified
  Storage (Arango, Virtuoso)        ██████████ 100%    DB installers stable
  Security (Age, Sops, Cosign)      ██████████ 100%    Full toolset available

SHARED INFRASTRUCTURE
  Justfile (Batch Build)            ██████████ 100%    Standard build automation
  .bot_directives/                  ██████████ 100%    Plugin hygiene rules
  .machine_readable/                ██████████ 100%    STATE.a2ml tracking

─────────────────────────────────────────────────────────────────────────────
OVERALL:                            █████████░  ~90%   Robust plugin ecosystem
```

## Key Dependencies

```
asdf Core ──────► Plugin Script ──────► Download Source ──────► Install
                     │
                     ▼
               Shim Generation
```

## Update Protocol

This file is maintained by both humans and AI agents. When updating:

1. **After completing a component**: Change its bar and percentage
2. **After adding a component**: Add a new row in the appropriate section
3. **After architectural changes**: Update the ASCII diagram
4. **Date**: Update the `Last updated` comment at the top of this file

Progress bars use: `█` (filled) and `░` (empty), 10 characters wide.
Percentages: 0%, 10%, 20%, ... 100% (in 10% increments).
