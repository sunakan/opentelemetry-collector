commit ee3ea46e3ecafd049e5da40b5914b43edba315b3
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Sun Aug 10 23:07:57 2025 +0000

    Update github-actions deps (#13603)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [actions/cache](https://redirect.github.com/actions/cache) | action |
    patch | `v4.2.3` -> `v4.2.4` |
    |
    [actions/create-github-app-token](https://redirect.github.com/actions/create-github-app-token)
    | action | minor | `v2.0.6` -> `v2.1.0` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | patch | `v3.29.5` -> `v3.29.8` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/cache (actions/cache)</summary>
    
    ###
    [`v4.2.4`](https://redirect.github.com/actions/cache/releases/tag/v4.2.4)
    
    [Compare
    Source](https://redirect.github.com/actions/cache/compare/v4.2.3...v4.2.4)
    
    #### What's Changed
    
    - Update README.md by
    [@&#8203;nebuk89](https://redirect.github.com/nebuk89) in
    [https://github.com/actions/cache/pull/1620](https://redirect.github.com/actions/cache/pull/1620)
    - Upgrade `@actions/cache` to `4.0.5` and move `@protobuf-ts/plugin` to
    dev depdencies by [@&#8203;Link-](https://redirect.github.com/Link-) in
    [https://github.com/actions/cache/pull/1634](https://redirect.github.com/actions/cache/pull/1634)
    - Prepare release `4.2.4` by
    [@&#8203;Link-](https://redirect.github.com/Link-) in
    [https://github.com/actions/cache/pull/1636](https://redirect.github.com/actions/cache/pull/1636)
    
    #### New Contributors
    
    - [@&#8203;nebuk89](https://redirect.github.com/nebuk89) made their
    first contribution in
    [https://github.com/actions/cache/pull/1620](https://redirect.github.com/actions/cache/pull/1620)
    
    **Full Changelog**: https://github.com/actions/cache/compare/v4...v4.2.4
    
    </details>
    
    <details>
    <summary>actions/create-github-app-token
    (actions/create-github-app-token)</summary>
    
    ###
    [`v2.1.0`](https://redirect.github.com/actions/create-github-app-token/releases/tag/v2.1.0)
    
    [Compare
    Source](https://redirect.github.com/actions/create-github-app-token/compare/v2.0.6...v2.1.0)
    
    ##### Features
    
    - use `node24` as runner
    ([#&#8203;267](https://redirect.github.com/actions/create-github-app-token/issues/267))
    ([a1cbe0f](https://redirect.github.com/actions/create-github-app-token/commit/a1cbe0fa3c5aa6b13e7437f226536549d68ed0dd))
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v3.29.8`](https://redirect.github.com/github/codeql-action/releases/tag/v3.29.8)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.29.7...v3.29.8)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 3.29.8 - 08 Aug 2025
    
    - Fix an issue where the Action would autodetect unsupported languages
    such as HTML.
    [#&#8203;3015](https://redirect.github.com/github/codeql-action/pull/3015)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.29.8/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.29.7`](https://redirect.github.com/github/codeql-action/releases/tag/v3.29.7)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.29.6...v3.29.7)
    
    This is a re-release of v3.29.5 to mitigate an issue that was discovered
    with v3.29.6.
    
    ###
    [`v3.29.6`](https://redirect.github.com/github/codeql-action/releases/tag/v3.29.6)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.29.5...v3.29.6)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 3.29.6 - 07 Aug 2025
    
    - The `cleanup-level` input to the `analyze` Action is now deprecated.
    The CodeQL Action has written a limited amount of intermediate results
    to the database since version 2.2.5, and now automatically manages
    cleanup.
    [#&#8203;2999](https://redirect.github.com/github/codeql-action/pull/2999)
    - Update default CodeQL bundle version to 2.22.3.
    [#&#8203;3000](https://redirect.github.com/github/codeql-action/pull/3000)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.29.6/CHANGELOG.md)
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS42MC40IiwidXBkYXRlZEluVmVyIjoiNDEuNjAuNCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
