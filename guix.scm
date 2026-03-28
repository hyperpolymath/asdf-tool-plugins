; SPDX-License-Identifier: PMPL-1.0-or-later
;; guix.scm — GNU Guix package definition for asdf-tool-plugins
;; Usage: guix shell -f guix.scm

(use-modules (guix packages)
             (guix build-system gnu)
             (guix licenses))

(package
  (name "asdf-tool-plugins")
  (version "0.1.0")
  (source #f)
  (build-system gnu-build-system)
  (synopsis "asdf-tool-plugins")
  (description "asdf-tool-plugins — part of the hyperpolymath ecosystem.")
  (home-page "https://github.com/hyperpolymath/asdf-tool-plugins")
  (license ((@@ (guix licenses) license) "PMPL-1.0-or-later"
             "https://github.com/hyperpolymath/palimpsest-license")))
