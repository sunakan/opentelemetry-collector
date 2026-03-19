commit 2329c6d5fe8efe4ba9913c1a7353f20ba5384589
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Mon Jan 5 10:15:26 2026 -0800

    chore(deps): update module github.com/rhysd/actionlint to v1.7.10 (#14336)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [github.com/rhysd/actionlint](https://redirect.github.com/rhysd/actionlint)
    | `v1.7.9` → `v1.7.10` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2frhysd%2factionlint/v1.7.10?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2frhysd%2factionlint/v1.7.9/v1.7.10?slim=true)
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
    [`v1.7.10`](https://redirect.github.com/rhysd/actionlint/blob/HEAD/CHANGELOG.md#v1710---2025-12-30)
    
    [Compare
    Source](https://redirect.github.com/rhysd/actionlint/compare/v1.7.9...v1.7.10)
    
    - Support [YAML anchors and
    aliases](https://yaml.org/spec/1.2.2/#&#8203;71-alias-nodes) (`&anchor`
    and `*anchor`) in workflow files. In addition to parsing YAML anchors
    correctly, actionlint checks unused and undefined anchors. See the
    [document](https://redirect.github.com/rhysd/actionlint/blob/main/docs/checks.md#yaml-anchors)
    for more details.
    ([#&#8203;133](https://redirect.github.com/rhysd/actionlint/issues/133),
    thanks [@&#8203;srz-zumix](https://redirect.github.com/srz-zumix) for
    the initial implementation at
    [#&#8203;568](https://redirect.github.com/rhysd/actionlint/issues/568)
    and [@&#8203;alexaandru](https://redirect.github.com/alexaandru) for
    trying another approach at
    [#&#8203;557](https://redirect.github.com/rhysd/actionlint/issues/557))
      ```yaml
      jobs:
        test:
          runs-on: ubuntu-latest
          services:
            nginx:
              image: nginx:latest
              credentials: &credentials
                username: ${{ secrets.user }}
                password: ${{ secrets.password }}
          steps:
            - run: ./download.sh
              # OK: Valid alias to &credentials
              env: *credentials
            - run: ./check.sh
              # ERROR: Undefined anchor 'credential'
              env: *credential
            - run: ./upload.sh
              # ERROR: Unused anchor 'credentials'
              env: &credentials
      ```
    - Remove support for `*-xl` macOS runner labels because they were
    [dropped](https://github.blog/changelog/2024-08-19-notice-of-upcoming-deprecations-and-breaking-changes-in-github-actions-runners/).
    ([#&#8203;592](https://redirect.github.com/rhysd/actionlint/issues/592),
    thanks [@&#8203;muzimuzhi](https://redirect.github.com/muzimuzhi))
    - Remove support for the macOS 13 runner labels because they were
    [dropped on Dec 4,
    2025](https://github.blog/changelog/2025-09-19-github-actions-macos-13-runner-image-is-closing-down/).
    ([#&#8203;593](https://redirect.github.com/rhysd/actionlint/issues/593),
    thanks [@&#8203;muzimuzhi](https://redirect.github.com/muzimuzhi))
      - `macos-13`
      - `macos-13-large`
      - `macos-13-xlarge`
    - Increase the maximum number of inputs in the `workflow_dispatch` event
    from 10 to 25 because the limitation [was recently
    relaxed](https://github.blog/changelog/2025-12-04-actions-workflow-dispatch-workflows-now-support-25-inputs/).
    ([#&#8203;598](https://redirect.github.com/rhysd/actionlint/issues/598),
    thanks [@&#8203;Haegi](https://redirect.github.com/Haegi))
    - Support [`artifact-metadata`
    permission](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#defining-access-for-the-github_token-scopes)
    for workflow permissions.
    ([#&#8203;602](https://redirect.github.com/rhysd/actionlint/issues/602),
    thanks
    [@&#8203;martincostello](https://redirect.github.com/martincostello))
    - Detect more complicated constants at `if:` conditions as error. See
    the [rule
    document](https://redirect.github.com/rhysd/actionlint/blob/main/docs/checks.md#if-cond-constant)
    for more details.
    - Refactor the workflow parser with [Go
    iterators](https://pkg.go.dev/iter#hdr-Iterators). This slightly
    improves the performance and memory usage.
    - Fix parsing extra `{` and `}` characters in format string of
    `format()` function call. For example v1.7.9 didn't parse `"{{0} {1}
    {2}}"` correctly.
    - Detect an invalid value at `type` in workflow call inputs as error.
    - Report [YAML merge key](https://yaml.org/type/merge.html) `<<` as
    error because GitHub Actions doesn't support the syntax.
    - Check available contexts in expressions at
    `jobs.<job_id>.snapshot.if`.
      ```yaml
      snapshot:
        image-name: my-custom-image
        # ERROR: `env` context is not allowed here
        if: ${{ env.USE_SNAPSHOT == 'true' }}
      ```
    - Fix the instruction to install actionlint with `mise` in the
    installation document.
    ([#&#8203;591](https://redirect.github.com/rhysd/actionlint/issues/591),
    thanks [@&#8203;risu729](https://redirect.github.com/risu729))
    - Update the popular actions data set to the latest to include new major
    versions of the actions.
    
    \[Changes]\[v1.7.10]
    
    <a id="v1.7.9"></a>
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi42Ni4xNCIsInVwZGF0ZWRJblZlciI6IjQyLjY5LjEiLCJ0YXJnZXRCcmFuY2giOiJtYWluIiwibGFiZWxzIjpbImRlcGVuZGVuY2llcyIsInJlbm92YXRlYm90Il19-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
