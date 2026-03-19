commit a865b780a65b96ad3d8fd4d5956e9a648cf70bc2
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 3 16:12:45 2026 +0000

    Update github-actions deps (#14676)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [actions/setup-go](https://redirect.github.com/actions/setup-go) |
    action | minor | `v6.2.0` → `v6.3.0` |
    | [actions/setup-go](https://redirect.github.com/actions/setup-go)
    ([changelog](https://redirect.github.com/actions/setup-go/compare/7a3fe6cf4cb3a834922a1244abfce67bcef6a0c5..4b73464bb391d4059bd26b0524d20df3927bd417))
    | action | digest | `7a3fe6c` → `4b73464` |
    | [anchore/sbom-action](https://redirect.github.com/anchore/sbom-action)
    | action | minor | `v0.22.2` → `v0.23.0` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | patch | `v4.32.4` → `v4.32.5` |
    |
    [lycheeverse/lychee-action](https://redirect.github.com/lycheeverse/lychee-action)
    | action | minor | `v2.7.0` → `v2.8.0` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the [Dependency
    Dashboard](../issues/8903) for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/setup-go (actions/setup-go)</summary>
    
    ###
    [`v6.3.0`](https://redirect.github.com/actions/setup-go/releases/tag/v6.3.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-go/compare/v6.2.0...v6.3.0)
    
    #### What's Changed
    
    - Update default Go module caching to use go.mod by
    [@&#8203;priyagupta108](https://redirect.github.com/priyagupta108) in
    [#&#8203;705](https://redirect.github.com/actions/setup-go/pull/705)
    - Fix golang download url to go.dev by
    [@&#8203;178inaba](https://redirect.github.com/178inaba) in
    [#&#8203;469](https://redirect.github.com/actions/setup-go/pull/469)
    
    **Full Changelog**:
    <https://github.com/actions/setup-go/compare/v6...v6.3.0>
    
    </details>
    
    <details>
    <summary>anchore/sbom-action (anchore/sbom-action)</summary>
    
    ###
    [`v0.23.0`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.23.0)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.22.2...v0.23.0)
    
    #### v0.23.0
    
    - switch to single-file dist build with sub-action flags and update
    dependencies
    ([#&#8203;595](https://redirect.github.com/anchore/sbom-action/issues/595))
    \[[@&#8203;kzantow](https://redirect.github.com/kzantow)]
    - switch to esbuild
    ([#&#8203;590](https://redirect.github.com/anchore/sbom-action/issues/590))
    \[[@&#8203;willmurphyscode](https://redirect.github.com/willmurphyscode)]
    - update Syft to v1.42.1
    ([#&#8203;599](https://redirect.github.com/anchore/sbom-action/issues/599))
    \[@&#8203;[anchore-actions-token-generator\[bot\]](https://redirect.github.com/apps/anchore-actions-token-generator)]
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v4.32.5`](https://redirect.github.com/github/codeql-action/compare/v4.32.4...v4.32.5)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v4.32.4...v4.32.5)
    
    </details>
    
    <details>
    <summary>lycheeverse/lychee-action (lycheeverse/lychee-action)</summary>
    
    ###
    [`v2.8.0`](https://redirect.github.com/lycheeverse/lychee-action/releases/tag/v2.8.0)
    
    [Compare
    Source](https://redirect.github.com/lycheeverse/lychee-action/compare/v2.7.0...v2.8.0)
    
    #### What's Changed
    
    - Update lycheeVersion to v0.23.0 by
    [@&#8203;github-actions](https://redirect.github.com/github-actions)\[bot]
    in
    [#&#8203;324](https://redirect.github.com/lycheeverse/lychee-action/pull/324)
    - Update args for lychee-action to use root-dir by
    [@&#8203;mre](https://redirect.github.com/mre) in
    [#&#8203;314](https://redirect.github.com/lycheeverse/lychee-action/pull/314)
    - Update test to use `--root-dir` instead of the deprecated `--base` by
    [@&#8203;mre](https://redirect.github.com/mre) in
    [#&#8203;315](https://redirect.github.com/lycheeverse/lychee-action/pull/315)
    - Bump actions/checkout from 5 to 6 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;316](https://redirect.github.com/lycheeverse/lychee-action/pull/316)
    - Bump actions/cache from 4 to 5 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;319](https://redirect.github.com/lycheeverse/lychee-action/pull/319)
    - Bump peter-evans/create-pull-request from 7 to 8 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;318](https://redirect.github.com/lycheeverse/lychee-action/pull/318)
    - Add message with Summary report URL by
    [@&#8203;atteggiani](https://redirect.github.com/atteggiani) in
    [#&#8203;326](https://redirect.github.com/lycheeverse/lychee-action/pull/326)
    
    #### New Contributors
    
    - [@&#8203;atteggiani](https://redirect.github.com/atteggiani) made
    their first contribution in
    [#&#8203;326](https://redirect.github.com/lycheeverse/lychee-action/pull/326)
    
    **Full Changelog**:
    <https://github.com/lycheeverse/lychee-action/compare/v2.7.0...v2.8.0>
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My40OC4xIiwidXBkYXRlZEluVmVyIjoiNDMuNDguMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
