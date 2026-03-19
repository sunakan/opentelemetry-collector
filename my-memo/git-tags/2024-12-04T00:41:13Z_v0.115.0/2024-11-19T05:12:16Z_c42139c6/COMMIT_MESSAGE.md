commit c42139c6e7d1497ffc9839a1abb2a25f1dfddfee
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Mon Nov 18 21:12:16 2024 -0800

    chore(deps): update codecov/codecov-action action to v5 (#11702)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    |
    [codecov/codecov-action](https://redirect.github.com/codecov/codecov-action)
    | action | major | `4.6.0` -> `5.0.2` |
    
    # Warnings (1)
    
    Please correct - or verify that you can safely ignore - these warnings
    before you merge this PR.
    
    - `codecov/codecov-action`: Could not determine new digest for update
    (github-tags package codecov/codecov-action)
    
    ---
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>codecov/codecov-action (codecov/codecov-action)</summary>
    
    ###
    [`v5.0.2`](https://redirect.github.com/codecov/codecov-action/releases/tag/v5.0.2)
    
    [Compare
    Source](https://redirect.github.com/codecov/codecov-action/compare/v5.0.1...v5.0.2)
    
    #### What's Changed
    
    - fix: override commit and pr values for PR cases by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1657](https://redirect.github.com/codecov/codecov-action/pull/1657)
    
    **Full Changelog**:
    https://github.com/codecov/codecov-action/compare/v5.0.1...v5.0.2
    
    ###
    [`v5.0.1`](https://redirect.github.com/codecov/codecov-action/releases/tag/v5.0.1)
    
    [Compare
    Source](https://redirect.github.com/codecov/codecov-action/compare/v5.0.0...v5.0.1)
    
    #### What's Changed
    
    - fix: use marketplace v5 badge by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1646](https://redirect.github.com/codecov/codecov-action/pull/1646)
    - fix: update tokenless branch logic by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1650](https://redirect.github.com/codecov/codecov-action/pull/1650)
    - chore(release): 5.0.1 by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1656](https://redirect.github.com/codecov/codecov-action/pull/1656)
    
    **Full Changelog**:
    https://github.com/codecov/codecov-action/compare/v5.0.0...v5.0.1
    
    ###
    [`v5.0.0`](https://redirect.github.com/codecov/codecov-action/releases/tag/v5.0.0)
    
    [Compare
    Source](https://redirect.github.com/codecov/codecov-action/compare/v4.6.0...v5.0.0)
    
    ##### v5 Release
    
    `v5` of the Codecov GitHub Action will use the [Codecov
    Wrapper](https://redirect.github.com/codecov/wrapper) to encapsulate the
    [CLI](https://redirect.github.com/codecov/codecov-cli). This will help
    ensure that the Action gets updates quicker.
    
    ##### Migration Guide
    
    The `v5` release also coincides with the opt-out feature for tokens for
    public repositories. In the `Global Upload Token` section of the
    settings page of an organization in codecov.io, you can set the ability
    for Codecov to receive a coverage reports from any source. This will
    allow contributors or other members of a repository to upload without
    needing access to the Codecov token. For more details see [how to upload
    without a
    token](https://docs.codecov.com/docs/codecov-tokens#uploading-without-a-token).
    
    > \[!WARNING]\
    > **The following arguments have been changed**
    >
    > -   `file` (this has been deprecated in favor of `files`)
    > -   `plugin` (this has been deprecated in favor of `plugins`)
    
    The following arguments have been added:
    
    -   `binary`
    -   `gcov_args`
    -   `gcov_executable`
    -   `gcov_ignore`
    -   `gcov_include`
    -   `report_type`
    -   `skip_validation`
    -   `swift_project`
    
    You can see their usage in the `action.yml`
    [file](https://redirect.github.com/codecov/codecov-action/blob/main/action.yml).
    
    ##### What's Changed
    
    - chore(deps): bump to eslint9+ and remove eslint-config-google by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1591](https://redirect.github.com/codecov/codecov-action/pull/1591)
    - build(deps-dev): bump
    [@&#8203;octokit/webhooks-types](https://redirect.github.com/octokit/webhooks-types)
    from 7.5.1 to 7.6.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1595](https://redirect.github.com/codecov/codecov-action/pull/1595)
    - build(deps-dev): bump typescript from 5.6.2 to 5.6.3 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1604](https://redirect.github.com/codecov/codecov-action/pull/1604)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/parser](https://redirect.github.com/typescript-eslint/parser)
    from 8.8.0 to 8.8.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1601](https://redirect.github.com/codecov/codecov-action/pull/1601)
    - build(deps): bump
    [@&#8203;actions/core](https://redirect.github.com/actions/core) from
    1.11.0 to 1.11.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1597](https://redirect.github.com/codecov/codecov-action/pull/1597)
    - build(deps): bump github/codeql-action from 3.26.9 to 3.26.11 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1596](https://redirect.github.com/codecov/codecov-action/pull/1596)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/eslint-plugin](https://redirect.github.com/typescript-eslint/eslint-plugin)
    from 8.8.0 to 8.8.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1600](https://redirect.github.com/codecov/codecov-action/pull/1600)
    - build(deps-dev): bump eslint from 9.11.1 to 9.12.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1598](https://redirect.github.com/codecov/codecov-action/pull/1598)
    - build(deps): bump github/codeql-action from 3.26.11 to 3.26.12 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1609](https://redirect.github.com/codecov/codecov-action/pull/1609)
    - build(deps): bump actions/checkout from 4.2.0 to 4.2.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1608](https://redirect.github.com/codecov/codecov-action/pull/1608)
    - build(deps): bump actions/upload-artifact from 4.4.0 to 4.4.3 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1607](https://redirect.github.com/codecov/codecov-action/pull/1607)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/parser](https://redirect.github.com/typescript-eslint/parser)
    from 8.8.1 to 8.9.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1612](https://redirect.github.com/codecov/codecov-action/pull/1612)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/eslint-plugin](https://redirect.github.com/typescript-eslint/eslint-plugin)
    from 8.8.1 to 8.9.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1611](https://redirect.github.com/codecov/codecov-action/pull/1611)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/eslint-plugin](https://redirect.github.com/typescript-eslint/eslint-plugin)
    from 8.9.0 to 8.10.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1615](https://redirect.github.com/codecov/codecov-action/pull/1615)
    - build(deps-dev): bump eslint from 9.12.0 to 9.13.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1618](https://redirect.github.com/codecov/codecov-action/pull/1618)
    - build(deps): bump github/codeql-action from 3.26.12 to 3.26.13 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1617](https://redirect.github.com/codecov/codecov-action/pull/1617)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/parser](https://redirect.github.com/typescript-eslint/parser)
    from 8.9.0 to 8.10.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1614](https://redirect.github.com/codecov/codecov-action/pull/1614)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/eslint-plugin](https://redirect.github.com/typescript-eslint/eslint-plugin)
    from 8.10.0 to 8.11.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1620](https://redirect.github.com/codecov/codecov-action/pull/1620)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/parser](https://redirect.github.com/typescript-eslint/parser)
    from 8.10.0 to 8.11.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1619](https://redirect.github.com/codecov/codecov-action/pull/1619)
    - build(deps-dev): bump
    [@&#8203;types/jest](https://redirect.github.com/types/jest) from
    29.5.13 to 29.5.14 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1622](https://redirect.github.com/codecov/codecov-action/pull/1622)
    - build(deps): bump actions/checkout from 4.2.1 to 4.2.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1625](https://redirect.github.com/codecov/codecov-action/pull/1625)
    - build(deps): bump github/codeql-action from 3.26.13 to 3.27.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1624](https://redirect.github.com/codecov/codecov-action/pull/1624)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/eslint-plugin](https://redirect.github.com/typescript-eslint/eslint-plugin)
    from 8.11.0 to 8.12.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1626](https://redirect.github.com/codecov/codecov-action/pull/1626)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/eslint-plugin](https://redirect.github.com/typescript-eslint/eslint-plugin)
    from 8.12.1 to 8.12.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1629](https://redirect.github.com/codecov/codecov-action/pull/1629)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/parser](https://redirect.github.com/typescript-eslint/parser)
    from 8.11.0 to 8.12.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1628](https://redirect.github.com/codecov/codecov-action/pull/1628)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/parser](https://redirect.github.com/typescript-eslint/parser)
    from 8.12.2 to 8.13.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1635](https://redirect.github.com/codecov/codecov-action/pull/1635)
    - build(deps-dev): bump
    [@&#8203;typescript-eslint/eslint-plugin](https://redirect.github.com/typescript-eslint/eslint-plugin)
    from 8.12.2 to 8.13.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1634](https://redirect.github.com/codecov/codecov-action/pull/1634)
    - feat: use wrapper by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1621](https://redirect.github.com/codecov/codecov-action/pull/1621)
    - Update README.md by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1639](https://redirect.github.com/codecov/codecov-action/pull/1639)
    - fix: add missing vars by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1638](https://redirect.github.com/codecov/codecov-action/pull/1638)
    - fix: update container builds by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1640](https://redirect.github.com/codecov/codecov-action/pull/1640)
    - fixL use the correct source by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1642](https://redirect.github.com/codecov/codecov-action/pull/1642)
    - chore(deps): bump wrapper to 0.0.23 by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1644](https://redirect.github.com/codecov/codecov-action/pull/1644)
    
    **Full Changelog**:
    https://github.com/codecov/codecov-action/compare/v4.6.0...v5.0.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4xOS4wIiwidXBkYXRlZEluVmVyIjoiMzkuMTkuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
