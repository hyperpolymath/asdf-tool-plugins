<!-- SPDX-License-Identifier: PMPL-1.0-or-later -->
<!-- TOPOLOGY.md -- Project architecture map and completion dashboard -->
<!-- Last updated: 2026-02-14 -->

# TOPOLOGY -- asdf-tool-plugins

## System Architecture

```
asdf-tool-plugins/
├── .machine_readable/         # RSR state files
├── .github/workflows/         # CI/CD
├── contractiles/              # RSR contractile agreements
├── asdf-ada-plugin/           # Ada plugin
├── asdf-age-plugin/           # age encryption plugin
├── asdf-apko-plugin/          # apko plugin
├── asdf-arangodb-plugin/      # ArangoDB plugin
├── asdf-bebop-plugin/         # Bebop plugin
├── asdf-borg-plugin/          # BorgBackup plugin
├── asdf-casket-ssg-plugin/    # Casket SSG plugin
├── asdf-cassandra-plugin/     # Cassandra plugin
├── asdf-cfssl-plugin/         # CFSSL plugin
├── asdf-cobalt-plugin/        # Cobalt plugin
├── asdf-cobol-plugin/         # COBOL plugin
├── asdf-coredns-plugin/       # CoreDNS plugin
├── asdf-cosign-plugin/        # Cosign plugin
├── asdf-couchdb-plugin/       # CouchDB plugin
├── asdf-cue-plugin/           # CUE plugin
├── asdf-deno-plugin/          # Deno plugin
├── asdf-dhall-plugin/         # Dhall plugin
├── asdf-doctl-plugin/         # DigitalOcean CLI plugin
├── asdf-dragonfly-plugin/     # DragonflyDB plugin
├── asdf-envoy-plugin/         # Envoy plugin
├── asdf-fornax-plugin/        # Fornax plugin
├── asdf-fortran-plugin/       # Fortran plugin
├── asdf-franklin-plugin/      # Franklin plugin
├── asdf-fulcio-plugin/        # Fulcio plugin
├── asdf-git-crypt-plugin/     # git-crypt plugin
├── asdf-gitleaks-plugin/      # Gitleaks plugin
├── asdf-grype-plugin/         # Grype plugin
├── asdf-haproxy-plugin/       # HAProxy plugin
├── asdf-hashicorp-plugin/     # HashiCorp tools plugin
├── asdf-httpd-plugin/         # Apache HTTPD plugin
├── asdf-influxdb-plugin/      # InfluxDB plugin
├── asdf-kdl-fmt-plugin/       # KDL formatter plugin
├── asdf-lego-plugin/          # Lego (ACME) plugin
├── asdf-linkerd-plugin/       # Linkerd plugin
├── asdf-mariadb-plugin/       # MariaDB plugin
├── asdf-mdbook-plugin/        # mdBook plugin
├── asdf-melange-plugin/       # Melange plugin
├── asdf-mysql-plugin/         # MySQL plugin
├── asdf-neo4j-plugin/         # Neo4j plugin
├── asdf-nickel-plugin/        # Nickel plugin
├── asdf-ocaml-plugin/         # OCaml plugin
├── asdf-opa-plugin/           # OPA plugin
├── asdf-openlitespeed-plugin/ # OpenLiteSpeed plugin
├── asdf-openssh-plugin/       # OpenSSH plugin
├── asdf-openssl-plugin/       # OpenSSL plugin
├── asdf-orchid-plugin/        # Orchid plugin
├── asdf-pollen-plugin/        # Pollen plugin
├── asdf-pomerium-plugin/      # Pomerium plugin
├── asdf-rekor-plugin/         # Rekor plugin
├── asdf-rescript-plugin/      # ReScript plugin
├── asdf-restic-plugin/        # Restic plugin
├── asdf-rethinkdb-plugin/     # RethinkDB plugin
├── asdf-serum-plugin/         # Serum plugin
├── asdf-sops-plugin/          # SOPS plugin
├── asdf-step-ca-plugin/       # step-ca plugin
├── asdf-surrealdb-plugin/     # SurrealDB plugin
├── asdf-syft-plugin/          # Syft plugin
├── asdf-taplo-plugin/         # Taplo plugin
├── asdf-trivy-plugin/         # Trivy plugin
├── asdf-ui-plugin/            # UI plugin
├── asdf-varnish-plugin/       # Varnish plugin
├── asdf-virtuoso-plugin/      # Virtuoso plugin
├── asdf-vlang-plugin/         # V language plugin
├── asdf-yj-plugin/            # yj plugin
├── asdf-yq-plugin/            # yq plugin
├── asdf-zig-plugin/           # Zig plugin
├── asdf-zola-plugin/          # Zola plugin
├── README.adoc                # Overview
└── Justfile                   # Task runner
```

## Completion Dashboard

| Component | Status | Progress |
|-----------|--------|----------|
| RSR Structure | Active | `████████░░` 80% |
| Plugin Collection (66 plugins) | Active | `██████████` 100% |
| Documentation | Active | `██████░░░░` 60% |

## Key Dependencies

- RSR Template: `rsr-template-repo`
- Runtime: `asdf` version manager
