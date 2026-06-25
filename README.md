<!--
SPDX-License-Identifier: CC-BY-SA-4.0
SPDX-FileCopyrightText: 2025-2026 Jonathan D.A. Jewell <j.d.a.jewell@open.ac.uk>
-->

Hyperpolymath’s collection of [asdf](https://asdf-vm.com/) plugins for
installing and managing development tools and runtimes across the
estate.

Each top-level subdirectory is a standalone asdf plugin. The full set
covers the languages, runtimes, and tools the hyperpolymath
language-policy (<a
href="https://github.com/hyperpolymath/standards/blob/main/.claude/CLAUDE.md"
class="md
in `hyperpolymath/standards`">CLAUDE</a>) currently endorses, plus some
neighbouring tools used in supporting infrastructure.

# Installing a plugin

Each plugin is installable directly from this monorepo using the
standard asdf plugin-add URL form:

```bash
asdf plugin add <name> https://github.com/hyperpolymath/asdf-tool-plugins.git
```

(Some plugins may require additional setup — see the plugin’s own README
inside its subdirectory.)

# Layout

This is a **consolidated monorepo** — every plugin lives in a sibling
directory at the top level. Each is autonomous (its own `bin/list-all`,
`bin/install`, plugin-specific helpers).

Browse the plugin list directly by running:

```bash
ls -d */
```

# Status

- **Licence**: MPL-2.0.

- **Estate role**: development-tooling support; downstream of the
  `hyperpolymath/standards` language-policy.

- **Audit findings**: see `docs/tech-debt-2026-05-26.md` if present
  (added by the 2026-05-26 estate tech-debt scan).

# Contributing

PRs welcome — see <a href="CONTRIBUTING.md" class="md">CONTRIBUTING</a>.
All commits must be GPG-signed and follow conventional commits (per
estate-wide policy in `hyperpolymath/standards`).

# Companion repositories

- [`hyperpolymath/standards`](https://github.com/hyperpolymath/standards)
  — canonical estate-wide standards including the language policy.

- [`hyperpolymath/rsr-template-repo`](https://github.com/hyperpolymath/rsr-template-repo)
  — the canonical project scaffold (this repo follows the RSR pattern).
