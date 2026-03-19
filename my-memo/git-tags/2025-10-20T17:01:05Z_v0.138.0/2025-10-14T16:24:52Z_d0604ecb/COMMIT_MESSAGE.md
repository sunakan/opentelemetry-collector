commit d0604ecb7d51ca5d7d1215b1f62dc52a1b915793
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Oct 14 09:24:52 2025 -0700

    Update github-actions deps (major) (#14015)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    |
    [actions/github-script](https://redirect.github.com/actions/github-script)
    | action | major | `v7.1.0` -> `v8.0.0` |
    | [actions/setup-go](https://redirect.github.com/actions/setup-go) |
    action | major | `v5.5.0` -> `v6.0.0` |
    | [actions/setup-go](https://redirect.github.com/actions/setup-go) |
    action | major | `v5` -> `v6` |
    | [actions/stale](https://redirect.github.com/actions/stale) | action |
    major | `v9.1.0` -> `v10.1.0` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | major | `v3.30.8` -> `v4.30.8` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/github-script (actions/github-script)</summary>
    
    ###
    [`v8.0.0`](https://redirect.github.com/actions/github-script/compare/v7.1.0...v8.0.0)
    
    [Compare
    Source](https://redirect.github.com/actions/github-script/compare/v7.1.0...v8.0.0)
    
    </details>
    
    <details>
    <summary>actions/setup-go (actions/setup-go)</summary>
    
    ###
    [`v6.0.0`](https://redirect.github.com/actions/setup-go/releases/tag/v6.0.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-go/compare/v5.5.0...v6.0.0)
    
    ##### What's Changed
    
    ##### Breaking Changes
    
    - Improve toolchain handling to ensure more reliable and consistent
    toolchain selection and management by
    [@&#8203;matthewhughes934](https://redirect.github.com/matthewhughes934)
    in [#&#8203;460](https://redirect.github.com/actions/setup-go/pull/460)
    - Upgrade Nodejs runtime from node20 to node 24 by
    [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) in
    [#&#8203;624](https://redirect.github.com/actions/setup-go/pull/624)
    
    Make sure your runner is on version v2.327.1 or later to ensure
    compatibility with this release. [See Release
    Notes](https://redirect.github.com/actions/runner/releases/tag/v2.327.1)
    
    ##### Dependency Upgrades
    
    - Upgrade [@&#8203;types/jest](https://redirect.github.com/types/jest)
    from 29.5.12 to 29.5.14 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;589](https://redirect.github.com/actions/setup-go/pull/589)
    - Upgrade
    [@&#8203;actions/tool-cache](https://redirect.github.com/actions/tool-cache)
    from 2.0.1 to 2.0.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;591](https://redirect.github.com/actions/setup-go/pull/591)
    - Upgrade
    [@&#8203;typescript-eslint/parser](https://redirect.github.com/typescript-eslint/parser)
    from 8.31.1 to 8.35.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;590](https://redirect.github.com/actions/setup-go/pull/590)
    - Upgrade undici from 5.28.5 to 5.29.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;594](https://redirect.github.com/actions/setup-go/pull/594)
    - Upgrade typescript from 5.4.2 to 5.8.3 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;538](https://redirect.github.com/actions/setup-go/pull/538)
    - Upgrade eslint-plugin-jest from 28.11.0 to 29.0.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;603](https://redirect.github.com/actions/setup-go/pull/603)
    - Upgrade `form-data` to bring in fix for critical vulnerability by
    [@&#8203;matthewhughes934](https://redirect.github.com/matthewhughes934)
    in [#&#8203;618](https://redirect.github.com/actions/setup-go/pull/618)
    - Upgrade actions/checkout from 4 to 5 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;631](https://redirect.github.com/actions/setup-go/pull/631)
    
    ##### New Contributors
    
    -
    [@&#8203;matthewhughes934](https://redirect.github.com/matthewhughes934)
    made their first contribution in
    [#&#8203;618](https://redirect.github.com/actions/setup-go/pull/618)
    - [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) made their
    first contribution in
    [#&#8203;624](https://redirect.github.com/actions/setup-go/pull/624)
    
    **Full Changelog**:
    <https://github.com/actions/setup-go/compare/v5...v6.0.0>
    
    </details>
    
    <details>
    <summary>actions/stale (actions/stale)</summary>
    
    ###
    [`v10.1.0`](https://redirect.github.com/actions/stale/releases/tag/v10.1.0)
    
    [Compare
    Source](https://redirect.github.com/actions/stale/compare/v10.0.0...v10.1.0)
    
    #### What's Changed
    
    - Add `only-issue-types` option to filter issues by type by
    [@&#8203;Bibo-Joshi](https://redirect.github.com/Bibo-Joshi) in
    [#&#8203;1255](https://redirect.github.com/actions/stale/pull/1255)
    
    #### New Contributors
    
    - [@&#8203;Bibo-Joshi](https://redirect.github.com/Bibo-Joshi) made
    their first contribution in
    [#&#8203;1255](https://redirect.github.com/actions/stale/pull/1255)
    
    **Full Changelog**:
    <https://github.com/actions/stale/compare/v10...v10.1.0>
    
    ###
    [`v10.0.0`](https://redirect.github.com/actions/stale/releases/tag/v10.0.0)
    
    [Compare
    Source](https://redirect.github.com/actions/stale/compare/v9.1.0...v10.0.0)
    
    #### What's Changed
    
    ##### Breaking Changes
    
    - Upgrade to node 24 by
    [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) in
    [#&#8203;1279](https://redirect.github.com/actions/stale/pull/1279)
    Make sure your runner is on version v2.327.1 or later to ensure
    compatibility with this release. [Release
    Notes](https://redirect.github.com/actions/runner/releases/tag/v2.327.1)
    
    ##### Enhancement
    
    - Introducing sort-by option by
    [@&#8203;suyashgaonkar](https://redirect.github.com/suyashgaonkar) in
    [#&#8203;1254](https://redirect.github.com/actions/stale/pull/1254)
    
    ##### Dependency Upgrades
    
    - Upgrade actions/publish-immutable-action from 0.0.3 to 0.0.4 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1186](https://redirect.github.com/actions/stale/pull/1186)
    - Upgrade undici from 5.28.4 to 5.28.5 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1201](https://redirect.github.com/actions/stale/pull/1201)
    - Upgrade
    [@&#8203;action/cache](https://redirect.github.com/action/cache) from
    4.0.0 to 4.0.2 by
    [@&#8203;aparnajyothi-y](https://redirect.github.com/aparnajyothi-y) in
    [#&#8203;1226](https://redirect.github.com/actions/stale/pull/1226)
    - Upgrade
    [@&#8203;action/cache](https://redirect.github.com/action/cache) from
    4.0.2 to 4.0.3 by
    [@&#8203;suyashgaonkar](https://redirect.github.com/suyashgaonkar) in
    [#&#8203;1233](https://redirect.github.com/actions/stale/pull/1233)
    - Upgrade undici from 5.28.5 to 5.29.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1251](https://redirect.github.com/actions/stale/pull/1251)
    - Upgrade form-data to bring in fix for critical vulnerability by
    [@&#8203;gowridurgad](https://redirect.github.com/gowridurgad) in
    [#&#8203;1277](https://redirect.github.com/actions/stale/pull/1277)
    
    ##### Documentation changes
    
    - Changelog update for recent releases by
    [@&#8203;suyashgaonkar](https://redirect.github.com/suyashgaonkar) in
    [#&#8203;1224](https://redirect.github.com/actions/stale/pull/1224)
    - Permissions update in Readme by
    [@&#8203;ghadimir](https://redirect.github.com/ghadimir) in
    [#&#8203;1248](https://redirect.github.com/actions/stale/pull/1248)
    
    #### New Contributors
    
    - [@&#8203;suyashgaonkar](https://redirect.github.com/suyashgaonkar)
    made their first contribution in
    [#&#8203;1224](https://redirect.github.com/actions/stale/pull/1224)
    - [@&#8203;GhadimiR](https://redirect.github.com/GhadimiR) made their
    first contribution in
    [#&#8203;1248](https://redirect.github.com/actions/stale/pull/1248)
    - [@&#8203;gowridurgad](https://redirect.github.com/gowridurgad) made
    their first contribution in
    [#&#8203;1277](https://redirect.github.com/actions/stale/pull/1277)
    - [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) made their
    first contribution in
    [#&#8203;1279](https://redirect.github.com/actions/stale/pull/1279)
    
    **Full Changelog**:
    <https://github.com/actions/stale/compare/v9...v10.0.0>
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v4.30.8`](https://redirect.github.com/github/codeql-action/releases/tag/v4.30.8)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.30.7...v4.30.8)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 4.30.8 - 10 Oct 2025
    
    No user facing changes.
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v4.30.8/CHANGELOG.md)
    for more information.
    
    ###
    [`v4.30.7`](https://redirect.github.com/github/codeql-action/releases/tag/v4.30.7)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.30.8...v4.30.7)
    
    ##### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    ##### 4.30.7 - 06 Oct 2025
    
    - \[v4+ only] The CodeQL Action now runs on Node.js v24.
    [#&#8203;3169](https://redirect.github.com/github/codeql-action/pull/3169)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v4.30.7/CHANGELOG.md)
    for more information.
    
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
    [config
    help](https://redirect.github.com/renovatebot/renovate/discussions) if
    that's undesired.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS4xNDMuMSIsInVwZGF0ZWRJblZlciI6IjQxLjE0My4xIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
