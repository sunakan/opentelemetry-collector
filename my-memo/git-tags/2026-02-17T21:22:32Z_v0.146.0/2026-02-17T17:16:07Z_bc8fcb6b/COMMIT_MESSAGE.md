commit bc8fcb6b7659df497a7db5a0d7fcf9b2ec4f0f6c
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 17 17:16:07 2026 +0000

    chore(deps): update module github.com/rhysd/actionlint to v1.7.11 (#14601)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [github.com/rhysd/actionlint](https://redirect.github.com/rhysd/actionlint)
    | `v1.7.10` → `v1.7.11` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2frhysd%2factionlint/v1.7.11?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2frhysd%2factionlint/v1.7.10/v1.7.11?slim=true)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>rhysd/actionlint (github.com/rhysd/actionlint)</summary>
    
    ###
    [`v1.7.11`](https://redirect.github.com/rhysd/actionlint/blob/HEAD/CHANGELOG.md#v1711---2026-02-14)
    
    [Compare
    Source](https://redirect.github.com/rhysd/actionlint/compare/v1.7.10...v1.7.11)
    
    - Support the [`case()`
    function](https://docs.github.com/en/actions/reference/workflows-and-actions/expressions#case)
    in `${{ }}` expressions which was recently added to GitHub Actions.
    ([#&#8203;612](https://redirect.github.com/rhysd/actionlint/issues/612),
    [#&#8203;614](https://redirect.github.com/rhysd/actionlint/issues/614),
    thanks [@&#8203;heppu](https://redirect.github.com/heppu))
      ```yaml
      env:
        # ERROR: case() requires an odd number of arguments
        ENVIRONMENT: |-
          ${{ case(
            github.ref == 'refs/heads/main', 'production',
            github.ref == 'refs/heads/staging', 'staging'
          ) }}
      ```
    - Support new `macos-26-large` and `windows-2025-vs2026` runner labels.
    See the [GitHub's
    announce](https://github.blog/changelog/2026-02-05-github-actions-early-february-2026-updates/)
    for more details.
    ([#&#8203;615](https://redirect.github.com/rhysd/actionlint/issues/615),
    thanks [@&#8203;hugovk](https://redirect.github.com/hugovk) and
    [@&#8203;muzimuzhi](https://redirect.github.com/muzimuzhi))
    - Enable [Artifact
    attestations](https://docs.github.com/en/actions/concepts/security/artifact-attestations)
    for the released binaries. From v1.7.11 [`gh`
    command](https://cli.github.com/) can verify the integrity of the
    downloaded binaries as follows. The verification is highly recommended
    in terms of supply chain security.
    ([#&#8203;608](https://redirect.github.com/rhysd/actionlint/issues/608),
    thanks [@&#8203;takaram](https://redirect.github.com/takaram))
      ```console
    $ gh release download --repo rhysd/actionlint --pattern
    '*_darwin_amd64.tar.gz' v1.7.11
    $ gh attestation verify --repo rhysd/actionlint
    actionlint_1.7.11_darwin_amd64.tar.gz
    Loaded digest
    sha256:17ffc17fed8f0258ef6ad4aed932d3272464c7ef7d64e1cb0d65aa97c9752107
    for file://actionlint_1.7.11_darwin_amd64.tar.gz
      Loaded 1 attestation from GitHub API
    
      The following policy criteria will be enforced:
    - Predicate type must match:................
    https://slsa.dev/provenance/v1
      - Source Repository Owner URI must match:... https://github.com/rhysd
    - Source Repository URI must match:.........
    https://github.com/rhysd/actionlint
    - Subject Alternative Name must match regex:
    (?i)^https://github.com/rhysd/actionlint/
    - OIDC Issuer must match:...................
    https://token.actions.githubusercontent.com
    
      ✓ Verification succeeded!
    
      The following 1 attestation matched the policy criteria
    
      - Attestation #&#8203;1
        - Build repo:..... rhysd/actionlint
        - Build workflow:. .github/workflows/release.yaml@refs/tags/v1.7.11
        - Signer repo:.... rhysd/actionlint
        - Signer workflow: .github/workflows/release.yaml@refs/tags/v1.7.11
      ```
    - Report path filters with `./` because they never match anything.
    ([#&#8203;521](https://redirect.github.com/rhysd/actionlint/issues/521))
      ```yaml
      on:
        push:
          paths:
            # ERROR: This never matches anything. `foo/bar.txt` is correct.
            - ./foo/bar.txt
      ```
    - Fix comparing matrix items when an item is a super set of another
    item.
    ([#&#8203;523](https://redirect.github.com/rhysd/actionlint/issues/523),
    [#&#8203;613](https://redirect.github.com/rhysd/actionlint/issues/613),
    thanks
    [@&#8203;michaelgruenewald](https://redirect.github.com/michaelgruenewald))
    - Fix stack overflow crash by a recursive anchor in matrix items.
    ([#&#8203;610](https://redirect.github.com/rhysd/actionlint/issues/610))
    - Fix a unassigned variable false positive from shellcheck by disabling
    SC2153 rule.
    ([#&#8203;573](https://redirect.github.com/rhysd/actionlint/issues/573))
    - Reduce the number of memory allocations on resolving anchors.
    - Update the popular actions data set to the latest.
    - Update Go dependencies to the latest.
    - Remove legacy Homebrew formula in rhysd/actionlint repository in favor
    of the [cask
    package](https://redirect.github.com/rhysd/actionlint/blob/main/Casks/actionlint.rb).
    Note that this change does not affect Homebrew's official formula.
    - Add a link to the release page of the version in the
    [playground](https://rhysd.github.io/actionlint/).
    
    \[Changes]\[v1.7.11]
    
    <a id="v1.7.10"></a>
    
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
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My4xNS4zIiwidXBkYXRlZEluVmVyIjoiNDMuMTUuMyIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
