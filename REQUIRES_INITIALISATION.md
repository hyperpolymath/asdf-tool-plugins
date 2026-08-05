<!-- SPDX-License-Identifier: CC-BY-SA-4.0 -->

# REQUIRES INITIALISATION

**This repository is not finished being set up.** 19 substitution token(s) across 15 file(s) still have no value.

## Why this is not already done

This repo was created from `hyperpolymath/rsr-template-repo`. The mint
(`just repo-init`) fills every token that has a single mechanical answer —
owner, repo, author, dates, licence, branch — and it has done so here.

The tokens below are the ones it *deliberately cannot* answer. They need a
decision or a fact that exists only in your head: what this project is for,
what command builds it, which port the service listens on, whether a PGP key
is held at all. The template's own token vocabulary says as much — you cannot
sensibly answer "required invariants" in a thirty-second bootstrap.

They were left **visibly unfilled on purpose**. The alternatives were both
worse: inventing plausible values would put confident falsehoods into a
security policy and an architecture document, and silently deleting the
sections would hide the fact that a decision is owed. A visible gap is
honest; a fabricated answer is not.

## Do not delete this file until every item below is resolved

This file is the only marker that the work is outstanding. Deleting it early
does not finish the setup, it just conceals it — and the next person or agent
to arrive will reasonably assume the repo is complete.

- **If you are a person:** delete this file yourself once the last item is done.
- **If you are an agent:** resolve what you legitimately can, leave the rest,
  and delete this file only when no token below remains anywhere in the tree.
  Do not delete it to make a gate go green.

Re-running the estate top-up tool will remove this file automatically once
nothing is outstanding, so the safest way to finish is to fix the tokens and
let the check confirm it.

## What is needed, and where it goes

### `{{CONDUCT_TEAM}}`

Name of the conduct body. If there is no committee, rewrite the sentence rather than substituting a plural noun into 'a {{CONDUCT_TEAM}} member'.

Appears in:

- `asdf-augmenters/CODE_OF_CONDUCT.md`
- `asdf-augmenters/asdf-plugin-collection/plugins/nickel/CODE_OF_CONDUCT (1).md`
- `asdf-nickel-plugin/CODE_OF_CONDUCT (1).md`
- `asdf-plugin-collection/plugins/nickel/CODE_OF_CONDUCT (1).md`

### `{{CONSUMER1}}`

A downstream repo that consumes this one.

Appears in:

- `.machine_readable/INTENT.contractile`

### `{{CONSUMER2}}`

A second downstream consumer.

Appears in:

- `.machine_readable/INTENT.contractile`

### `{{DEP1}}`

First named dependency, in .machine_readable/INTENT.contractile.

Appears in:

- `.machine_readable/INTENT.contractile`

### `{{DEP2}}`

Second named dependency, in .machine_readable/INTENT.contractile.

Appears in:

- `.machine_readable/INTENT.contractile`

### `{{FILE}}`

Appears in:

- `asdf-augmenters/asdf-ghjk/Justfile`
- `asdf-ghjk/Justfile`

### `{{MESSAGE}}`

Appears in:

- `asdf-augmenters/asdf-ghjk/Justfile`
- `asdf-ghjk/Justfile`

### `{{MONOREPO_OR_STANDALONE}}`

Literally 'monorepo' or 'standalone'.

Appears in:

- `.machine_readable/INTENT.contractile`

### `{{NAME}}`

Appears in:

- `asdf-augmenters/asdf-ghjk/Justfile`
- `asdf-ghjk/Justfile`

### `{{ONE_PARAGRAPH_ANTI_PURPOSE}}`

A paragraph on what this deliberately is NOT for.

Appears in:

- `.machine_readable/INTENT.contractile`

### `{{ONE_PARAGRAPH_PURPOSE}}`

A paragraph on what this is for.

Appears in:

- `.machine_readable/INTENT.contractile`

### `{{PGP_FINGERPRINT}}`

Full fingerprint of the security-contact PGP key. NOTE: no key is published anywhere in this estate — if none is held, delete the PGP block rather than inventing one.

Appears in:

- `asdf-augmenters/asdf-plugin-collection/plugins/nickel/SECURITY (1).md`
- `asdf-nickel-plugin/SECURITY (1).md`
- `asdf-plugin-collection/plugins/nickel/SECURITY (1).md`

### `{{PGP_KEY_URL}}`

Public URL the PGP key can be fetched from. Same caveat as PGP_FINGERPRINT.

Appears in:

- `asdf-augmenters/asdf-plugin-collection/plugins/nickel/SECURITY (1).md`
- `asdf-nickel-plugin/SECURITY (1).md`
- `asdf-plugin-collection/plugins/nickel/SECURITY (1).md`

### `{{PORT}}`

Port the container service listens on.

Appears in:

- `asdf-augmenters/asdf-ghjk/Justfile`
- `asdf-ghjk/Justfile`

### `{{PROJECT_UNIQUE_STRENGTH}}`

What this does that its alternatives do not.

Appears in:

- `.machine_readable/agent_instructions/methodology.a2ml`

### `{{RESPONSE_TIME}}`

Initial-response SLA for a security or conduct report. Promise only what a solo maintainer can actually meet.

Appears in:

- `asdf-augmenters/CODE_OF_CONDUCT.md`
- `asdf-augmenters/asdf-plugin-collection/plugins/nickel/CODE_OF_CONDUCT (1).md`
- `asdf-nickel-plugin/CODE_OF_CONDUCT (1).md`
- `asdf-plugin-collection/plugins/nickel/CODE_OF_CONDUCT (1).md`

### `{{SCRIPT}}`

Appears in:

- `asdf-augmenters/asdf-ghjk/Justfile`
- `asdf-ghjk/Justfile`

### `{{VERSION}}`

Version/tag for the container image.

Appears in:

- `asdf-augmenters/asdf-ghjk/Justfile`
- `asdf-augmenters/asdf-metaiconic-plugin/Justfile`
- `asdf-augmenters/asdf-plugin-collection/plugins/metaiconic/Justfile`
- `asdf-ghjk/Justfile`
- `asdf-metaiconic-plugin/Justfile`
- `asdf-plugin-collection/plugins/metaiconic/Justfile`

### `{{WEBSITE}}`

Project homepage URL, or delete the field if there is none.

Appears in:

- `asdf-augmenters/asdf-plugin-collection/plugins/nickel/SECURITY (1).md`
- `asdf-nickel-plugin/SECURITY (1).md`
- `asdf-plugin-collection/plugins/nickel/SECURITY (1).md`

---

Generated by the estate top-up pass. Rationale and the governing rulings are
in `hyperpolymath/standards`; the token vocabulary is
`.machine_readable/ai/PLACEHOLDERS.adoc` in `rsr-template-repo`.
