commit fb912b97c0e98b380f9ebf9e70e81ece23e3fdb2
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Thu Feb 29 09:17:35 2024 -0800

    Update github-actions deps (major) (#9426)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [actions/checkout](https://togithub.com/actions/checkout) | action |
    major | `v3.6.0` -> `v4.1.1` |
    |
    [actions/upload-artifact](https://togithub.com/actions/upload-artifact)
    | action | major | `v3.1.3` -> `v4.3.1` |
    | [github/codeql-action](https://togithub.com/github/codeql-action) |
    action | major | `v2.24.5` -> `v3.24.6` |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/checkout (actions/checkout)</summary>
    
    ###
    [`v4.1.1`](https://togithub.com/actions/checkout/releases/tag/v4.1.1)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v4.1.0...v4.1.1)
    
    ##### What's Changed
    
    - Update CODEOWNERS to Launch team by
    [@&#8203;joshmgross](https://togithub.com/joshmgross) in
    [https://github.com/actions/checkout/pull/1510](https://togithub.com/actions/checkout/pull/1510)
    - Correct link to GitHub Docs by
    [@&#8203;peterbe](https://togithub.com/peterbe) in
    [https://github.com/actions/checkout/pull/1511](https://togithub.com/actions/checkout/pull/1511)
    - Link to release page from what's new section by
    [@&#8203;cory-miller](https://togithub.com/cory-miller) in
    [https://github.com/actions/checkout/pull/1514](https://togithub.com/actions/checkout/pull/1514)
    
    ##### New Contributors
    
    - [@&#8203;joshmgross](https://togithub.com/joshmgross) made their first
    contribution in
    [https://github.com/actions/checkout/pull/1510](https://togithub.com/actions/checkout/pull/1510)
    - [@&#8203;peterbe](https://togithub.com/peterbe) made their first
    contribution in
    [https://github.com/actions/checkout/pull/1511](https://togithub.com/actions/checkout/pull/1511)
    
    **Full Changelog**:
    https://github.com/actions/checkout/compare/v4.1.0...v4.1.1
    
    ###
    [`v4.1.0`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v410)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v4.0.0...v4.1.0)
    
    - [Add support for partial checkout
    filters](https://togithub.com/actions/checkout/pull/1396)
    
    ###
    [`v4.0.0`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v400)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v3.6.0...v4.0.0)
    
    - [Support fetching without the --progress
    option](https://togithub.com/actions/checkout/pull/1067)
    -   [Update to node20](https://togithub.com/actions/checkout/pull/1436)
    
    </details>
    
    <details>
    <summary>actions/upload-artifact (actions/upload-artifact)</summary>
    
    ###
    [`v4.3.1`](https://togithub.com/actions/upload-artifact/releases/tag/v4.3.1)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v4.3.0...v4.3.1)
    
    - Bump
    [@&#8203;actions/artifacts](https://togithub.com/actions/artifacts) to
    latest version to include [updated GHES host
    check](https://togithub.com/actions/toolkit/pull/1648)
    
    ###
    [`v4.3.0`](https://togithub.com/actions/upload-artifact/releases/tag/v4.3.0)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v4.2.0...v4.3.0)
    
    ##### What's Changed
    
    - Reorganize upload code in prep for merge logic & add more tests by
    [@&#8203;robherley](https://togithub.com/robherley) in
    [https://github.com/actions/upload-artifact/pull/504](https://togithub.com/actions/upload-artifact/pull/504)
    - Add sub-action to merge artifacts by
    [@&#8203;robherley](https://togithub.com/robherley) in
    [https://github.com/actions/upload-artifact/pull/505](https://togithub.com/actions/upload-artifact/pull/505)
    
    **Full Changelog**:
    https://github.com/actions/upload-artifact/compare/v4...v4.3.0
    
    ###
    [`v4.2.0`](https://togithub.com/actions/upload-artifact/releases/tag/v4.2.0)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v4.1.0...v4.2.0)
    
    ##### What's Changed
    
    - Ability to overwrite an Artifact by
    [@&#8203;robherley](https://togithub.com/robherley) in
    [https://github.com/actions/upload-artifact/pull/501](https://togithub.com/actions/upload-artifact/pull/501)
    
    **Full Changelog**:
    https://github.com/actions/upload-artifact/compare/v4...v4.2.0
    
    ###
    [`v4.1.0`](https://togithub.com/actions/upload-artifact/releases/tag/v4.1.0)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v4.0.0...v4.1.0)
    
    #### What's Changed
    
    - Add migrations docs by
    [@&#8203;robherley](https://togithub.com/robherley) in
    [https://github.com/actions/upload-artifact/pull/482](https://togithub.com/actions/upload-artifact/pull/482)
    - Update README.md by
    [@&#8203;samuelwine](https://togithub.com/samuelwine) in
    [https://github.com/actions/upload-artifact/pull/492](https://togithub.com/actions/upload-artifact/pull/492)
    - Support artifact-url output by
    [@&#8203;konradpabjan](https://togithub.com/konradpabjan) in
    [https://github.com/actions/upload-artifact/pull/496](https://togithub.com/actions/upload-artifact/pull/496)
    - Update readme to reflect new 500 artifact per job limit by
    [@&#8203;robherley](https://togithub.com/robherley) in
    [https://github.com/actions/upload-artifact/pull/497](https://togithub.com/actions/upload-artifact/pull/497)
    
    #### New Contributors
    
    - [@&#8203;samuelwine](https://togithub.com/samuelwine) made their first
    contribution in
    [https://github.com/actions/upload-artifact/pull/492](https://togithub.com/actions/upload-artifact/pull/492)
    
    **Full Changelog**:
    https://github.com/actions/upload-artifact/compare/v4...v4.1.0
    
    ###
    [`v4.0.0`](https://togithub.com/actions/upload-artifact/releases/tag/v4.0.0)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v3.1.3...v4.0.0)
    
    #### What's Changed
    
    The release of upload-artifact@v4 and download-artifact@v4 are major
    changes to the backend architecture of Artifacts. They have numerous
    performance and behavioral improvements.
    
    For more information, see the
    [@&#8203;actions/artifact](https://togithub.com/actions/toolkit/tree/main/packages/artifact)
    documentation.
    
    #### New Contributors
    
    - [@&#8203;vmjoseph](https://togithub.com/vmjoseph) made their first
    contribution in
    [https://github.com/actions/upload-artifact/pull/464](https://togithub.com/actions/upload-artifact/pull/464)
    
    **Full Changelog**:
    https://github.com/actions/upload-artifact/compare/v3...v4.0.0
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v3.24.6`](https://togithub.com/github/codeql-action/compare/v3.24.5...v3.24.6)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.24.5...v3.24.6)
    
    ###
    [`v3.24.5`](https://togithub.com/github/codeql-action/compare/v3.24.4...v3.24.5)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.24.4...v3.24.5)
    
    ###
    [`v3.24.4`](https://togithub.com/github/codeql-action/compare/v3.24.3...v3.24.4)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.24.3...v3.24.4)
    
    ###
    [`v3.24.3`](https://togithub.com/github/codeql-action/compare/v3.24.2...v3.24.3)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.24.2...v3.24.3)
    
    ###
    [`v3.24.2`](https://togithub.com/github/codeql-action/compare/v3.24.1...v3.24.2)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.24.1...v3.24.2)
    
    ###
    [`v3.24.1`](https://togithub.com/github/codeql-action/compare/v3.24.0...v3.24.1)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.24.0...v3.24.1)
    
    ###
    [`v3.24.0`](https://togithub.com/github/codeql-action/compare/v3.23.2...v3.24.0)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.23.2...v3.24.0)
    
    ###
    [`v3.23.2`](https://togithub.com/github/codeql-action/compare/v3.23.1...v3.23.2)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.23.1...v3.23.2)
    
    ###
    [`v3.23.1`](https://togithub.com/github/codeql-action/compare/v3.23.0...v3.23.1)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.23.0...v3.23.1)
    
    ###
    [`v3.23.0`](https://togithub.com/github/codeql-action/compare/v3.22.12...v3.23.0)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.22.12...v3.23.0)
    
    ###
    [`v3.22.12`](https://togithub.com/github/codeql-action/compare/v3.22.11...v3.22.12)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.22.11...v3.22.12)
    
    ###
    [`v3.22.11`](https://togithub.com/github/codeql-action/compare/v2.22.11...v3.22.11)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.24.5...v3.22.11)
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4xNTMuMiIsInVwZGF0ZWRJblZlciI6IjM3LjIyMC4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
