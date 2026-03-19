commit 3d370bca4fb7751d23b83ecf5c2f6507096c08b3
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Apr 23 06:55:09 2024 -0700

    Update github-actions deps (#10019)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [actions/checkout](https://togithub.com/actions/checkout) | action |
    patch | `v4.1.1` -> `v4.1.3` |
    |
    [actions/upload-artifact](https://togithub.com/actions/upload-artifact)
    | action | patch | `v4.3.1` -> `v4.3.3` |
    | [github/codeql-action](https://togithub.com/github/codeql-action) |
    action | patch | `v3.25.0` -> `v3.25.2` |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/checkout (actions/checkout)</summary>
    
    ###
    [`v4.1.3`](https://togithub.com/actions/checkout/releases/tag/v4.1.3)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v4.1.2...v4.1.3)
    
    #### What's Changed
    
    - Update `actions/checkout` version in `update-main-version.yml` by
    [@&#8203;jww3](https://togithub.com/jww3) in
    [https://github.com/actions/checkout/pull/1650](https://togithub.com/actions/checkout/pull/1650)
    - Check git version before attempting to disable `sparse-checkout` by
    [@&#8203;jww3](https://togithub.com/jww3) in
    [https://github.com/actions/checkout/pull/1656](https://togithub.com/actions/checkout/pull/1656)
    - Add SSH user parameter by
    [@&#8203;cory-miller](https://togithub.com/cory-miller) in
    [https://github.com/actions/checkout/pull/1685](https://togithub.com/actions/checkout/pull/1685)
    
    **Full Changelog**:
    https://github.com/actions/checkout/compare/v4.1.2...v4.1.3
    
    ###
    [`v4.1.2`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v412)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v4.1.1...v4.1.2)
    
    - Fix: Disable sparse checkout whenever `sparse-checkout` option is not
    present [@&#8203;dscho](https://togithub.com/dscho) in
    [https://github.com/actions/checkout/pull/1598](https://togithub.com/actions/checkout/pull/1598)
    
    </details>
    
    <details>
    <summary>actions/upload-artifact (actions/upload-artifact)</summary>
    
    ###
    [`v4.3.3`](https://togithub.com/actions/upload-artifact/releases/tag/v4.3.3)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v4.3.2...v4.3.3)
    
    ##### What's Changed
    
    - updating `@actions/artifact` dependency to v2.1.6 by
    [@&#8203;eggyhead](https://togithub.com/eggyhead) in
    [https://github.com/actions/upload-artifact/pull/565](https://togithub.com/actions/upload-artifact/pull/565)
    
    **Full Changelog**:
    https://github.com/actions/upload-artifact/compare/v4.3.2...v4.3.3
    
    ###
    [`v4.3.2`](https://togithub.com/actions/upload-artifact/releases/tag/v4.3.2)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v4.3.1...v4.3.2)
    
    #### What's Changed
    
    - Update release-new-action-version.yml by
    [@&#8203;konradpabjan](https://togithub.com/konradpabjan) in
    [https://github.com/actions/upload-artifact/pull/516](https://togithub.com/actions/upload-artifact/pull/516)
    - Minor fix to the migration readme by
    [@&#8203;andrewakim](https://togithub.com/andrewakim) in
    [https://github.com/actions/upload-artifact/pull/523](https://togithub.com/actions/upload-artifact/pull/523)
    - Update readme with v3/v2/v1 deprecation notice by
    [@&#8203;robherley](https://togithub.com/robherley) in
    [https://github.com/actions/upload-artifact/pull/561](https://togithub.com/actions/upload-artifact/pull/561)
    - updating `@actions/artifact` dependency to v2.1.5 and `@actions/core`
    to v1.0.1 by [@&#8203;eggyhead](https://togithub.com/eggyhead) in
    [https://github.com/actions/upload-artifact/pull/562](https://togithub.com/actions/upload-artifact/pull/562)
    
    #### New Contributors
    
    - [@&#8203;andrewakim](https://togithub.com/andrewakim) made their first
    contribution in
    [https://github.com/actions/upload-artifact/pull/523](https://togithub.com/actions/upload-artifact/pull/523)
    
    **Full Changelog**:
    https://github.com/actions/upload-artifact/compare/v4.3.1...v4.3.2
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v3.25.2`](https://togithub.com/github/codeql-action/compare/v3.25.1...v3.25.2)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.25.1...v3.25.2)
    
    ###
    [`v3.25.1`](https://togithub.com/github/codeql-action/compare/v3.25.0...v3.25.1)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.25.0...v3.25.1)
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    👻 **Immortal**: This PR will be recreated if closed unmerged. Get
    [config help](https://togithub.com/renovatebot/renovate/discussions) if
    that's undesired.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4zMTMuMSIsInVwZGF0ZWRJblZlciI6IjM3LjMxMy4xIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
