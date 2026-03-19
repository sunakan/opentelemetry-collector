commit 7a433456a84d731a405bd1566f9e9a69999cbf1a
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 30 09:37:46 2024 -0800

    Update github-actions deps (#9420)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [actions/checkout](https://togithub.com/actions/checkout) | action |
    minor | `v3.1.0` -> `v3.6.0` |
    |
    [actions/upload-artifact](https://togithub.com/actions/upload-artifact)
    | action | patch | `v3.1.0` -> `v3.1.3` |
    | [github/codeql-action](https://togithub.com/github/codeql-action) |
    action | minor | `v2.2.4` -> `v2.23.2` |
    | [github/codeql-action](https://togithub.com/github/codeql-action) |
    action | patch | `v3.23.1` -> `v3.23.2` |
    | [ossf/scorecard-action](https://togithub.com/ossf/scorecard-action) |
    action | minor | `v2.1.2` -> `v2.3.1` |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/checkout (actions/checkout)</summary>
    
    ###
    [`v3.6.0`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v360)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v3.5.3...v3.6.0)
    
    - [Fix: Mark test scripts with Bash'isms to be run via
    Bash](https://togithub.com/actions/checkout/pull/1377)
    - [Add option to fetch tags even if fetch-depth >
    0](https://togithub.com/actions/checkout/pull/579)
    
    ###
    [`v3.5.3`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v353)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v3.5.2...v3.5.3)
    
    - [Fix: Checkout fail in self-hosted runners when faulty submodule are
    checked-in](https://togithub.com/actions/checkout/pull/1196)
    - [Fix typos found by
    codespell](https://togithub.com/actions/checkout/pull/1287)
    - [Add support for sparse
    checkouts](https://togithub.com/actions/checkout/pull/1369)
    
    ###
    [`v3.5.2`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v352)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v3.5.1...v3.5.2)
    
    - [Fix api endpoint for
    GHES](https://togithub.com/actions/checkout/pull/1289)
    
    ###
    [`v3.5.1`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v351)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v3.5.0...v3.5.1)
    
    - [Fix slow checkout on
    Windows](https://togithub.com/actions/checkout/pull/1246)
    
    ###
    [`v3.5.0`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v350)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v3.4.0...v3.5.0)
    
    - [Add new public key for
    known_hosts](https://togithub.com/actions/checkout/pull/1237)
    
    ###
    [`v3.4.0`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v340)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v3.3.0...v3.4.0)
    
    - [Upgrade codeql actions to
    v2](https://togithub.com/actions/checkout/pull/1209)
    - [Upgrade
    dependencies](https://togithub.com/actions/checkout/pull/1210)
    - [Upgrade
    @&#8203;actions/io](https://togithub.com/actions/checkout/pull/1225)
    
    ###
    [`v3.3.0`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v330)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v3.2.0...v3.3.0)
    
    - [Implement branch list using callbacks from exec
    function](https://togithub.com/actions/checkout/pull/1045)
    - [Add in explicit reference to private checkout
    options](https://togithub.com/actions/checkout/pull/1050)
    - [Fix comment typos (that got added in
    #&#8203;770)](https://togithub.com/actions/checkout/pull/1057)
    
    ###
    [`v3.2.0`](https://togithub.com/actions/checkout/blob/HEAD/CHANGELOG.md#v320)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v3.1.0...v3.2.0)
    
    - [Add GitHub Action to perform
    release](https://togithub.com/actions/checkout/pull/942)
    -   [Fix status badge](https://togithub.com/actions/checkout/pull/967)
    - [Replace datadog/squid with ubuntu/squid Docker
    image](https://togithub.com/actions/checkout/pull/1002)
    - [Wrap pipeline commands for submoduleForeach in
    quotes](https://togithub.com/actions/checkout/pull/964)
    - [Update @&#8203;actions/io to
    1.1.2](https://togithub.com/actions/checkout/pull/1029)
    - [Upgrading version to
    3.2.0](https://togithub.com/actions/checkout/pull/1039)
    
    </details>
    
    <details>
    <summary>actions/upload-artifact (actions/upload-artifact)</summary>
    
    ###
    [`v3.1.3`](https://togithub.com/actions/upload-artifact/releases/tag/v3.1.3)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v3.1.2...v3.1.3)
    
    #### What's Changed
    
    - chore(github): remove trailing whitespaces by
    [@&#8203;ljmf00](https://togithub.com/ljmf00) in
    [https://github.com/actions/upload-artifact/pull/313](https://togithub.com/actions/upload-artifact/pull/313)
    - Bump [@&#8203;actions/artifact](https://togithub.com/actions/artifact)
    version to v1.1.2 by
    [@&#8203;bethanyj28](https://togithub.com/bethanyj28) in
    [https://github.com/actions/upload-artifact/pull/436](https://togithub.com/actions/upload-artifact/pull/436)
    
    **Full Changelog**:
    https://github.com/actions/upload-artifact/compare/v3...v3.1.3
    
    ###
    [`v3.1.2`](https://togithub.com/actions/upload-artifact/releases/tag/v3.1.2)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v3.1.1...v3.1.2)
    
    - Update all `@actions/*` NPM packages to their latest versions-
    [#&#8203;374](https://togithub.com/actions/upload-artifact/issues/374)
    - Update all dev dependencies to their most recent versions -
    [#&#8203;375](https://togithub.com/actions/upload-artifact/issues/375)
    
    ###
    [`v3.1.1`](https://togithub.com/actions/upload-artifact/releases/tag/v3.1.1)
    
    [Compare
    Source](https://togithub.com/actions/upload-artifact/compare/v3.1.0...v3.1.1)
    
    - Update actions/core package to latest version to remove `set-output`
    deprecation warning
    [#&#8203;351](https://togithub.com/actions/upload-artifact/issues/351)
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v2.23.2`](https://togithub.com/github/codeql-action/compare/v2.23.1...v2.23.2)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.23.1...v2.23.2)
    
    ###
    [`v2.23.1`](https://togithub.com/github/codeql-action/compare/v2.23.0...v2.23.1)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.23.0...v2.23.1)
    
    ###
    [`v2.23.0`](https://togithub.com/github/codeql-action/compare/v2.22.12...v2.23.0)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.12...v2.23.0)
    
    ###
    [`v2.22.12`](https://togithub.com/github/codeql-action/compare/v2.22.11...v2.22.12)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.11...v2.22.12)
    
    ###
    [`v2.22.11`](https://togithub.com/github/codeql-action/compare/v2.22.10...v2.22.11)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.10...v2.22.11)
    
    ###
    [`v2.22.10`](https://togithub.com/github/codeql-action/compare/v2.22.9...v2.22.10)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.9...v2.22.10)
    
    ###
    [`v2.22.9`](https://togithub.com/github/codeql-action/compare/v2.22.8...v2.22.9)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.8...v2.22.9)
    
    ###
    [`v2.22.8`](https://togithub.com/github/codeql-action/compare/v2.22.7...v2.22.8)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.7...v2.22.8)
    
    ###
    [`v2.22.7`](https://togithub.com/github/codeql-action/compare/v2.22.6...v2.22.7)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.6...v2.22.7)
    
    ###
    [`v2.22.6`](https://togithub.com/github/codeql-action/compare/v2.22.5...v2.22.6)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.5...v2.22.6)
    
    ###
    [`v2.22.5`](https://togithub.com/github/codeql-action/compare/v2.22.4...v2.22.5)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.4...v2.22.5)
    
    ###
    [`v2.22.4`](https://togithub.com/github/codeql-action/compare/v2.22.3...v2.22.4)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.3...v2.22.4)
    
    ###
    [`v2.22.3`](https://togithub.com/github/codeql-action/compare/v2.22.2...v2.22.3)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.2...v2.22.3)
    
    ###
    [`v2.22.2`](https://togithub.com/github/codeql-action/compare/v2.22.1...v2.22.2)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.1...v2.22.2)
    
    ###
    [`v2.22.1`](https://togithub.com/github/codeql-action/compare/v2.22.0...v2.22.1)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.22.0...v2.22.1)
    
    ###
    [`v2.22.0`](https://togithub.com/github/codeql-action/compare/v2.21.9...v2.22.0)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.9...v2.22.0)
    
    ###
    [`v2.21.9`](https://togithub.com/github/codeql-action/compare/v2.21.8...v2.21.9)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.8...v2.21.9)
    
    ###
    [`v2.21.8`](https://togithub.com/github/codeql-action/compare/v2.21.7...v2.21.8)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.7...v2.21.8)
    
    ###
    [`v2.21.7`](https://togithub.com/github/codeql-action/compare/v2.21.6...v2.21.7)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.6...v2.21.7)
    
    ###
    [`v2.21.6`](https://togithub.com/github/codeql-action/compare/v2.21.5...v2.21.6)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.5...v2.21.6)
    
    ###
    [`v2.21.5`](https://togithub.com/github/codeql-action/compare/v2.21.4...v2.21.5)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.4...v2.21.5)
    
    ###
    [`v2.21.4`](https://togithub.com/github/codeql-action/compare/v2.21.3...v2.21.4)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.3...v2.21.4)
    
    ###
    [`v2.21.3`](https://togithub.com/github/codeql-action/compare/v2.21.2...v2.21.3)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.2...v2.21.3)
    
    ###
    [`v2.21.2`](https://togithub.com/github/codeql-action/compare/v2.21.1...v2.21.2)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.1...v2.21.2)
    
    ###
    [`v2.21.1`](https://togithub.com/github/codeql-action/compare/v2.21.0...v2.21.1)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.21.0...v2.21.1)
    
    ###
    [`v2.21.0`](https://togithub.com/github/codeql-action/compare/v2.20.4...v2.21.0)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.20.4...v2.21.0)
    
    ###
    [`v2.20.4`](https://togithub.com/github/codeql-action/compare/v2.20.3...v2.20.4)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.20.3...v2.20.4)
    
    ###
    [`v2.20.3`](https://togithub.com/github/codeql-action/compare/v2.20.2...v2.20.3)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.20.2...v2.20.3)
    
    ###
    [`v2.20.2`](https://togithub.com/github/codeql-action/compare/v2.20.1...v2.20.2)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.20.1...v2.20.2)
    
    ###
    [`v2.20.1`](https://togithub.com/github/codeql-action/compare/v2.20.0...v2.20.1)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.20.0...v2.20.1)
    
    ###
    [`v2.20.0`](https://togithub.com/github/codeql-action/compare/v2.3.6...v2.20.0)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.3.6...v2.20.0)
    
    ###
    [`v2.3.6`](https://togithub.com/github/codeql-action/compare/v2.3.5...v2.3.6)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.3.5...v2.3.6)
    
    ###
    [`v2.3.5`](https://togithub.com/github/codeql-action/compare/v2.3.4...v2.3.5)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.3.4...v2.3.5)
    
    ###
    [`v2.3.4`](https://togithub.com/github/codeql-action/compare/v2.3.3...v2.3.4)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.3.3...v2.3.4)
    
    ###
    [`v2.3.3`](https://togithub.com/github/codeql-action/compare/v2.3.2...v2.3.3)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.3.2...v2.3.3)
    
    ###
    [`v2.3.2`](https://togithub.com/github/codeql-action/compare/v2.3.1...v2.3.2)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.3.1...v2.3.2)
    
    ###
    [`v2.3.1`](https://togithub.com/github/codeql-action/compare/v2.3.0...v2.3.1)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.3.0...v2.3.1)
    
    ###
    [`v2.3.0`](https://togithub.com/github/codeql-action/compare/v2.2.12...v2.3.0)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.2.12...v2.3.0)
    
    ###
    [`v2.2.12`](https://togithub.com/github/codeql-action/compare/v2.2.11...v2.2.12)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.2.11...v2.2.12)
    
    ###
    [`v2.2.11`](https://togithub.com/github/codeql-action/compare/v2.2.10...v2.2.11)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.2.10...v2.2.11)
    
    ###
    [`v2.2.10`](https://togithub.com/github/codeql-action/compare/v2.2.9...v2.2.10)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.2.9...v2.2.10)
    
    ###
    [`v2.2.9`](https://togithub.com/github/codeql-action/compare/v2.2.8...v2.2.9)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.2.8...v2.2.9)
    
    ###
    [`v2.2.8`](https://togithub.com/github/codeql-action/compare/v2.2.7...v2.2.8)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.2.7...v2.2.8)
    
    ###
    [`v2.2.7`](https://togithub.com/github/codeql-action/compare/v2.2.6...v2.2.7)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.2.6...v2.2.7)
    
    ###
    [`v2.2.6`](https://togithub.com/github/codeql-action/compare/v2.2.5...v2.2.6)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.2.5...v2.2.6)
    
    ###
    [`v2.2.5`](https://togithub.com/github/codeql-action/compare/v2.2.4...v2.2.5)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v2.2.4...v2.2.5)
    
    </details>
    
    <details>
    <summary>ossf/scorecard-action (ossf/scorecard-action)</summary>
    
    ###
    [`v2.3.1`](https://togithub.com/ossf/scorecard-action/releases/tag/v2.3.1)
    
    [Compare
    Source](https://togithub.com/ossf/scorecard-action/compare/v2.3.0...v2.3.1)
    
    #### What's Changed
    
    - :seedling: Bump github.com/ossf/scorecard/v4 from v4.13.0 to v4.13.1
    by [@&#8203;spencerschrock](https://togithub.com/spencerschrock) in
    [https://github.com/ossf/scorecard-action/pull/1282](https://togithub.com/ossf/scorecard-action/pull/1282)
    - Adds additional Fuzzing detection and fixes a SAST bug related to
    detecting CodeQL. For a full changelist of what this includes, see the
    [v4.13.1](https://togithub.com/ossf/scorecard/releases/tag/v4.13.1)
    release notes
    
    **Full Changelog**:
    https://github.com/ossf/scorecard-action/compare/v2.3.0...v2.3.1
    
    ###
    [`v2.3.0`](https://togithub.com/ossf/scorecard-action/releases/tag/v2.3.0)
    
    [Compare
    Source](https://togithub.com/ossf/scorecard-action/compare/v2.2.0...v2.3.0)
    
    #### What's Changed
    
    - :seedling: Bump github.com/ossf/scorecard/v4 from v4.11.0 to v4.13.0
    by [@&#8203;spencerschrock](https://togithub.com/spencerschrock) in
    [https://github.com/ossf/scorecard-action/pull/1270](https://togithub.com/ossf/scorecard-action/pull/1270)
    - For a full changelist of what this includes, see the
    [v4.12.0](https://togithub.com/ossf/scorecard/releases/tag/v4.12.0) and
    [v4.13.0](https://togithub.com/ossf/scorecard/releases/tag/v4.13.0)
    release notes
    - :sparkles: Send rekor tlog index to webapp when publishing results by
    [@&#8203;spencerschrock](https://togithub.com/spencerschrock) in
    [https://github.com/ossf/scorecard-action/pull/1169](https://togithub.com/ossf/scorecard-action/pull/1169)
    - :bug: Prevent url clipping for GHES instances by
    [@&#8203;rajbos](https://togithub.com/rajbos) in
    [https://github.com/ossf/scorecard-action/pull/1225](https://togithub.com/ossf/scorecard-action/pull/1225)
    
    ##### Documentation
    
    - :book: Update access rights needed to see the results in code scanning
    by [@&#8203;rajbos](https://togithub.com/rajbos) in
    [https://github.com/ossf/scorecard-action/pull/1229](https://togithub.com/ossf/scorecard-action/pull/1229)
    - :book: Add package comments. by
    [@&#8203;spencerschrock](https://togithub.com/spencerschrock) in
    [https://github.com/ossf/scorecard-action/pull/1221](https://togithub.com/ossf/scorecard-action/pull/1221)
    - :book: Add SECURITY.md file by
    [@&#8203;david-a-wheeler](https://togithub.com/david-a-wheeler) in
    [https://github.com/ossf/scorecard-action/pull/1250](https://togithub.com/ossf/scorecard-action/pull/1250)
    - :book: Fix typo in token input docs by
    [@&#8203;aabouzaid](https://togithub.com/aabouzaid) in
    [https://github.com/ossf/scorecard-action/pull/1258](https://togithub.com/ossf/scorecard-action/pull/1258)
    
    #### New Contributors
    
    - [@&#8203;david-a-wheeler](https://togithub.com/david-a-wheeler) made
    their first contribution in
    [https://github.com/ossf/scorecard-action/pull/1250](https://togithub.com/ossf/scorecard-action/pull/1250)
    - [@&#8203;aabouzaid](https://togithub.com/aabouzaid) made their first
    contribution in
    [https://github.com/ossf/scorecard-action/pull/1258](https://togithub.com/ossf/scorecard-action/pull/1258)
    
    **Full Changelog**:
    https://github.com/ossf/scorecard-action/compare/v2.2.0...v2.3.0
    
    ###
    [`v2.2.0`](https://togithub.com/ossf/scorecard-action/releases/tag/v2.2.0)
    
    [Compare
    Source](https://togithub.com/ossf/scorecard-action/compare/v2.1.3...v2.2.0)
    
    #### What's Changed
    
    - :seedling: Bump github.com/ossf/scorecard/v4 from v4.10.5 to v4.11.0
    by [@&#8203;spencerschrock](https://togithub.com/spencerschrock) in
    [https://github.com/ossf/scorecard-action/pull/1192](https://togithub.com/ossf/scorecard-action/pull/1192)
    
    #### Scorecard Result Viewer
    
    Thanks to contributions from
    [@&#8203;cynthia-sg](https://togithub.com/cynthia-sg) and
    [@&#8203;tegioz](https://togithub.com/tegioz) at
    [CLOMonitor](https://togithub.com/cncf/clomonitor), there is a new
    Scorecard Result visualization page at
    `https://securityscorecards.dev/viewer/?uri=<project-url>`.
    
    -
    [https://github.com/ossf/scorecard-webapp/pull/406](https://togithub.com/ossf/scorecard-webapp/pull/406)
    -
    [https://github.com/ossf/scorecard-webapp/pull/422](https://togithub.com/ossf/scorecard-webapp/pull/422)
    
    As an example, you can see our own score visualized
    [here](https://securityscorecards.dev/viewer/?uri=github.com/ossf/scorecard)
    Checkout our
    [README](https://togithub.com/ossf/scorecard-action/blob/08b4669551908b1024bb425080c797723083c031/README.md#scorecard-badge)
    to learn how to link your README badge to the new visualization page.
    
    #### Publishing Results
    
    This release contains two fixes which will improve the user experience
    when `publish_results` is `true`
    
    - Runs that fail our [workflow
    restrictions](https://togithub.com/ossf/scorecard-action/blob/08b4669551908b1024bb425080c797723083c031/README.md#workflow-restrictions)
    will fail with a 400 response indicating the problem, instead of a vague
    500 status.
    ([https://github.com/ossf/scorecard-action/pull/1156](https://togithub.com/ossf/scorecard-action/pull/1156),
    resolved
    [https://github.com/ossf/scorecard-action/issues/1150](https://togithub.com/ossf/scorecard-action/issues/1150))
    - Scorecard action will retry when signing results and submitting them
    to our web API. This should help with flakiness from connection
    failures.
    ([https://github.com/ossf/scorecard-action/pull/1191](https://togithub.com/ossf/scorecard-action/pull/1191))
    
    #### Docs
    
    - 📖 Update README to accept fine-grained tokens by
    [@&#8203;pnacht](https://togithub.com/pnacht) in
    [https://github.com/ossf/scorecard-action/pull/1175](https://togithub.com/ossf/scorecard-action/pull/1175)
    - 📖 Update installation instructions to match current GitHub UI by
    [@&#8203;joycebrum](https://togithub.com/joycebrum) in
    [https://github.com/ossf/scorecard-action/pull/1153](https://togithub.com/ossf/scorecard-action/pull/1153)
    - 📖 Document the GitHub action workflow restrictions when publishing
    results. by
    [@&#8203;spencerschrock](https://togithub.com/spencerschrock) in
    
    #### New Contributors
    
    - [@&#8203;bobcallaway](https://togithub.com/bobcallaway) made their
    first contribution in
    [https://github.com/ossf/scorecard-action/pull/1140](https://togithub.com/ossf/scorecard-action/pull/1140)
    - [@&#8203;pnacht](https://togithub.com/pnacht) made their first
    contribution in
    [https://github.com/ossf/scorecard-action/pull/1175](https://togithub.com/ossf/scorecard-action/pull/1175)
    
    **Full Changelog**:
    https://github.com/ossf/scorecard-action/compare/v2.1.3...v2.2.0
    
    ###
    [`v2.1.3`](https://togithub.com/ossf/scorecard-action/releases/tag/v2.1.3)
    
    [Compare
    Source](https://togithub.com/ossf/scorecard-action/compare/v2.1.2...v2.1.3)
    
    #### What's Changed
    
    - 🌱 Bump github.com/ossf/scorecard/v4 from 4.10.2 to 4.10.5 by
    [@&#8203;spencerschrock](https://togithub.com/spencerschrock) in
    [https://github.com/ossf/scorecard-action/pull/1111](https://togithub.com/ossf/scorecard-action/pull/1111)
    
    ##### Bug Fixes
    
    -   Invalid SARIF files from a bug in scorecard
    -
    [#&#8203;1076](https://togithub.com/ossf/scorecard-action/issues/1076),
    [#&#8203;1094](https://togithub.com/ossf/scorecard-action/issues/1094)
    - Vulnerabilities check crashes if a vulnerable dependency is found via
    OSVScanner
    - [#&#8203;1092](https://togithub.com/ossf/scorecard-action/issues/1092)
    -   Scorecard action not reporting binary artifacts in the repo
    - [#&#8203;1116](https://togithub.com/ossf/scorecard-action/issues/1116)
    
    **Full Scorecard Changelog**:
    https://github.com/ossf/scorecard/compare/v4.10.2...v4.10.5
    
    **Full Changelog**:
    https://github.com/ossf/scorecard-action/compare/v2.1.2...v2.1.3
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4xNTMuMiIsInVwZGF0ZWRJblZlciI6IjM3LjE1My4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <aboten@lightstep.com>
