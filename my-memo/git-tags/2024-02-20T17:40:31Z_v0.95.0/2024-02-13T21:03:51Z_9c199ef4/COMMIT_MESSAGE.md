commit 9c199ef4fa91aa6de8967c8cfe95bc7b73ae56df
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 13 13:03:51 2024 -0800

    Update module github.com/golangci/golangci-lint to v1.56.1 (#9559)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/golangci/golangci-lint](https://togithub.com/golangci/golangci-lint)
    | `v1.55.2` -> `v1.56.1` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fgolangci%2fgolangci-lint/v1.56.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fgolangci%2fgolangci-lint/v1.56.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fgolangci%2fgolangci-lint/v1.55.2/v1.56.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fgolangci%2fgolangci-lint/v1.55.2/v1.56.1?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>golangci/golangci-lint
    (github.com/golangci/golangci-lint)</summary>
    
    ###
    [`v1.56.1`](https://togithub.com/golangci/golangci-lint/blob/HEAD/CHANGELOG.md#v1561)
    
    [Compare
    Source](https://togithub.com/golangci/golangci-lint/compare/v1.56.0...v1.56.1)
    
    1.  updated linters
        -   `errcheck`: from 1.6.3 to 1.7.0
        -   `govet`: disable `loopclosure` with go1.22
        -   `revive`: from 1.3.6 to 1.3.7
        -   `testifylint`: from 1.1.0 to 1.1.1
    
    ###
    [`v1.56.0`](https://togithub.com/golangci/golangci-lint/blob/HEAD/CHANGELOG.md#v1560)
    
    [Compare
    Source](https://togithub.com/golangci/golangci-lint/compare/v1.55.2...v1.56.0)
    
    1.  new linters
    - feat: add `spancheck` linter https://github.com/jjti/go-spancheck
    2.  updated linters
        -   `depguard`: from 2.1.0 to 2.2.0
        -   `exhaustive`: from 0.11.0 to 0.12.0
        -   `exhaustruct`: from 3.1.0 to 3.2.0
        -   `gci`: from 0.11.2 to 0.12.1
        -   `ginkgolinter`: from 0.14.1 to 0.15.2
        -   `go-check-sumtype`: from 0.1.3 to 0.1.4
        -   `go-critic`: from 0.9.0 to 0.11.0
        -   `go-errorlint`: from 1.4.5 to 1.4.8
        -   `go-spancheck`: from 0.4.2 to 0.5.2
        -   `goconst`: from 1.6.0 to 1.7.0
        -   `godot`: from 1.4.15 to 1.4.16
        -   `gofumpt`: from 0.5.0 to 0.6.0
        -   `inamedparam`: from 0.1.2 to 0.1.3
        -   `ineffassign`: from 0.0.0-20230610083614-0e73809eb601 to 0.1.0
        -   `ireturn`: from 0.2.2 to 0.3.0
        -   `misspell`: add mode option
        -   `musttag`: from v0.7.2 to v0.8.0
        -   `paralleltest`: from 1.0.8 to 1.0.9
        -   `perfsprint`: from 0.2.0 to 0.6.0
        -   `protogetter`: from 0.2.3 to 0.3.4
        -   `revive`: from 1.3.4 to 1.3.6
        -   `sloglint`: add static-msg option
        -   `sloglint`: from 0.1.2 to 0.4.0
        -   `testifylint`: from 0.2.3 to 1.1.0
    - `unparam`: from
    [`2022122`](https://togithub.com/golangci/golangci-lint/commit/20221223090309)-7455f1af531d
    to
    [`2024010`](https://togithub.com/golangci/golangci-lint/commit/20240104100049)-c549a3470d14
        -   `whitespace`: update after moving to the `analysis` package
        -   `wsl`: from 3.4.0 to 4.2.0
        -   `zerologlint`: from 0.1.3 to 0.1.5
    3.  misc.
        -   🎉 go1.22 support
        -   Implement stats per linter with a flag
    - fix: make versioning inside Docker image consistent with binaries
        -   fix: parse Go RC version
    4.  Documentation
        -   Add missing fields to .golangci.reference.yml
        -   Fix noctx description
        -   Improve .golangci.reference.yml defaults
        -   Improve typecheck FAQ
    - Note that `exhaustruct` struct regular expressions are expected to
    match the entire `package/name/structname`
        -   Adjust wrapcheck ignoreSigs to new defaults
    
    **Important**
    
    `testifylint` has [breaking
    changes](https://togithub.com/Antonboom/testifylint/releases/tag/v1.0.0)
    about enabling/disabling checks:
    
    - If you were using the option `enable` with a filtered list of checks,
    you should either add `disable-all: true` (1) or use `disable` field
    (2).
    
        ```yml
        ```
    
    ### Example (1)
    
          testifylint:
            disable-all: true
            enable:
              - bool-compare
              - compares
              - empty
              - error-is-as
              - error-nil
              - expected-actual
              - go-require
              - float-compare
              - len
              - nil-compare
              - require-error
    
    ### - suite-dont-use-pkg
    
              - suite-extra-assert-call
              - suite-thelper
        ```
    
        ```yml
    
    ### Example (2)
    
          testifylint:
            disable:
              - suite-dont-use-pkg
        ```
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about this update
    again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4xNzMuMCIsInVwZGF0ZWRJblZlciI6IjM3LjE3My4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Alex Boten <aboten@lightstep.com>
