commit 7bab39e0c4bf122d28e050bb0fdf0899673de5ca
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 10 16:01:16 2026 +0000

    chore(deps): update github-actions deps (major) (#14749)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [actions/setup-node](https://redirect.github.com/actions/setup-node) |
    action | major | `v4.2.0` → `v6.3.0` |
    |
    [docker/setup-buildx-action](https://redirect.github.com/docker/setup-buildx-action)
    | action | major | `v3.12.0` → `v4.0.0` |
    |
    [docker/setup-qemu-action](https://redirect.github.com/docker/setup-qemu-action)
    | action | major | `v3.7.0` → `v4.0.0` |
    | [node](https://redirect.github.com/actions/node-versions) | uses-with
    | major | `20` → `24` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the [Dependency
    Dashboard](../issues/8903) for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/setup-node (actions/setup-node)</summary>
    
    ###
    [`v6.3.0`](https://redirect.github.com/actions/setup-node/releases/tag/v6.3.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-node/compare/v6.2.0...v6.3.0)
    
    #### What's Changed
    
    ##### Enhancements:
    
    - Support parsing `devEngines` field by
    [@&#8203;susnux](https://redirect.github.com/susnux) in
    [#&#8203;1283](https://redirect.github.com/actions/setup-node/pull/1283)
    
    > When using node-version-file: package.json, setup-node now
    prefers devEngines.runtime over engines.node.
    
    ##### Dependency updates:
    
    - Fix npm audit issues by
    [@&#8203;gowridurgad](https://redirect.github.com/gowridurgad) in
    [#&#8203;1491](https://redirect.github.com/actions/setup-node/pull/1491)
    - Replace uuid with crypto.randomUUID() by
    [@&#8203;trivikr](https://redirect.github.com/trivikr) in
    [#&#8203;1378](https://redirect.github.com/actions/setup-node/pull/1378)
    - Upgrade minimatch from 3.1.2 to 3.1.5 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [#&#8203;1498](https://redirect.github.com/actions/setup-node/pull/1498)
    
    ##### Bug fixes:
    
    - Remove hardcoded bearer for mirror-url
    [@&#8203;marco-ippolito](https://redirect.github.com/marco-ippolito) in
    [#&#8203;1467](https://redirect.github.com/actions/setup-node/pull/1467)
    - Scope test lockfiles by package manager and update cache tests by
    [@&#8203;gowridurgad](https://redirect.github.com/gowridurgad) in
    [#&#8203;1495](https://redirect.github.com/actions/setup-node/pull/1495)
    
    #### New Contributors
    
    - [@&#8203;susnux](https://redirect.github.com/susnux) made their first
    contribution in
    [#&#8203;1283](https://redirect.github.com/actions/setup-node/pull/1283)
    
    **Full Changelog**:
    <https://github.com/actions/setup-node/compare/v6...v6.3.0>
    
    ###
    [`v6.2.0`](https://redirect.github.com/actions/setup-node/compare/v6.1.0...v6.2.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-node/compare/v6.1.0...v6.2.0)
    
    ###
    [`v6.1.0`](https://redirect.github.com/actions/setup-node/releases/tag/v6.1.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-node/compare/v6.0.0...v6.1.0)
    
    #### What's Changed
    
    ##### Enhancement:
    
    - Remove always-auth configuration handling by
    [@&#8203;priyagupta108](https://redirect.github.com/priyagupta108) in
    [#&#8203;1436](https://redirect.github.com/actions/setup-node/pull/1436)
    
    ##### Dependency updates:
    
    - Upgrade
    [@&#8203;actions/cache](https://redirect.github.com/actions/cache) from
    4.0.3 to 4.1.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1384](https://redirect.github.com/actions/setup-node/pull/1384)
    - Upgrade actions/checkout from 5 to 6 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1439](https://redirect.github.com/actions/setup-node/pull/1439)
    - Upgrade js-yaml from 3.14.1 to 3.14.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1435](https://redirect.github.com/actions/setup-node/pull/1435)
    
    ##### Documentation update:
    
    - Add example for restore-only cache in documentation by
    [@&#8203;aparnajyothi-y](https://redirect.github.com/aparnajyothi-y) in
    [#&#8203;1419](https://redirect.github.com/actions/setup-node/pull/1419)
    
    **Full Changelog**:
    <https://github.com/actions/setup-node/compare/v6...v6.1.0>
    
    ###
    [`v6.0.0`](https://redirect.github.com/actions/setup-node/releases/tag/v6.0.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-node/compare/v5.0.0...v6.0.0)
    
    ##### What's Changed
    
    **Breaking Changes**
    
    - Limit automatic caching to npm, update workflows and documentation by
    [@&#8203;priyagupta108](https://redirect.github.com/priyagupta108) in
    [#&#8203;1374](https://redirect.github.com/actions/setup-node/pull/1374)
    
    **Dependency Upgrades**
    
    - Upgrade ts-jest from 29.1.2 to 29.4.1 and document breaking changes in
    v5 by [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot]
    in
    [#&#8203;1336](https://redirect.github.com/actions/setup-node/pull/1336)
    - Upgrade prettier from 2.8.8 to 3.6.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1334](https://redirect.github.com/actions/setup-node/pull/1334)
    - Upgrade actions/publish-action from 0.3.0 to 0.4.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1362](https://redirect.github.com/actions/setup-node/pull/1362)
    
    **Full Changelog**:
    <https://github.com/actions/setup-node/compare/v5...v6.0.0>
    
    ###
    [`v5.0.0`](https://redirect.github.com/actions/setup-node/releases/tag/v5.0.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-node/compare/v4.4.0...v5.0.0)
    
    ##### What's Changed
    
    ##### Breaking Changes
    
    - Enhance caching in setup-node with automatic package manager detection
    by [@&#8203;priya-kinthali](https://redirect.github.com/priya-kinthali)
    in
    [#&#8203;1348](https://redirect.github.com/actions/setup-node/pull/1348)
    
    This update, introduces automatic caching when a valid `packageManager`
    field is present in your `package.json`. This aims to improve workflow
    performance and make dependency management more seamless.
    To disable this automatic caching, set `package-manager-cache: false`
    
    ```yaml
    steps:
    - uses: actions/checkout@v5
    - uses: actions/setup-node@v5
      with:
        package-manager-cache: false
    ```
    
    - Upgrade action to use node24 by
    [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) in
    [#&#8203;1325](https://redirect.github.com/actions/setup-node/pull/1325)
    
    Make sure your runner is on version v2.327.1 or later to ensure
    compatibility with this release. [See Release
    Notes](https://redirect.github.com/actions/runner/releases/tag/v2.327.1)
    
    ##### Dependency Upgrades
    
    - Upgrade
    [@&#8203;octokit/request-error](https://redirect.github.com/octokit/request-error)
    and [@&#8203;actions/github](https://redirect.github.com/actions/github)
    by [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1227](https://redirect.github.com/actions/setup-node/pull/1227)
    - Upgrade uuid from 9.0.1 to 11.1.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1273](https://redirect.github.com/actions/setup-node/pull/1273)
    - Upgrade undici from 5.28.5 to 5.29.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1295](https://redirect.github.com/actions/setup-node/pull/1295)
    - Upgrade form-data to bring in fix for critical vulnerability by
    [@&#8203;gowridurgad](https://redirect.github.com/gowridurgad) in
    [#&#8203;1332](https://redirect.github.com/actions/setup-node/pull/1332)
    - Upgrade actions/checkout from 4 to 5 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot)\[bot] in
    [#&#8203;1345](https://redirect.github.com/actions/setup-node/pull/1345)
    
    ##### New Contributors
    
    - [@&#8203;priya-kinthali](https://redirect.github.com/priya-kinthali)
    made their first contribution in
    [#&#8203;1348](https://redirect.github.com/actions/setup-node/pull/1348)
    - [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) made their
    first contribution in
    [#&#8203;1325](https://redirect.github.com/actions/setup-node/pull/1325)
    
    **Full Changelog**:
    <https://github.com/actions/setup-node/compare/v4...v5.0.0>
    
    ###
    [`v4.4.0`](https://redirect.github.com/actions/setup-node/releases/tag/v4.4.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-node/compare/v4.3.0...v4.4.0)
    
    ##### What's Changed
    
    ##### Bug fixes:
    
    - Make eslint-compact matcher compatible with Stylelint by
    [@&#8203;FloEdelmann](https://redirect.github.com/FloEdelmann)
    in [#&#8203;98](https://redirect.github.com/actions/setup-node/pull/98)
    - Add support for indented eslint output by
    [@&#8203;fregante](https://redirect.github.com/fregante)
    in [#&#8203;1245](https://redirect.github.com/actions/setup-node/pull/1245)
    
    ##### Enhancement:
    
    - Support private mirrors by
    [@&#8203;marco-ippolito](https://redirect.github.com/marco-ippolito)
    in [#&#8203;1240](https://redirect.github.com/actions/setup-node/pull/1240)
    
    ##### Dependency update:
    
    - Upgrade
    [@&#8203;action/cache](https://redirect.github.com/action/cache) from
    4.0.2 to 4.0.3
    by [@&#8203;aparnajyothi-y](https://redirect.github.com/aparnajyothi-y)
    in [#&#8203;1262](https://redirect.github.com/actions/setup-node/pull/1262)
    
    ##### New Contributors
    
    - [@&#8203;FloEdelmann](https://redirect.github.com/FloEdelmann) made
    their first contribution
    in [#&#8203;98](https://redirect.github.com/actions/setup-node/pull/98)
    - [@&#8203;fregante](https://redirect.github.com/fregante) made their
    first contribution
    in [#&#8203;1245](https://redirect.github.com/actions/setup-node/pull/1245)
    - [@&#8203;marco-ippolito](https://redirect.github.com/marco-ippolito)
    made their first contribution
    in [#&#8203;1240](https://redirect.github.com/actions/setup-node/pull/1240)
    
    **Full
    Changelog**: <https://github.com/actions/setup-node/compare/v4...v4.4.0>
    
    ###
    [`v4.3.0`](https://redirect.github.com/actions/setup-node/releases/tag/v4.3.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-node/compare/v4.2.0...v4.3.0)
    
    ##### What's Changed
    
    ##### Dependency updates
    
    - Upgrade
    [@&#8203;actions/glob](https://redirect.github.com/actions/glob) from
    0.4.0 to 0.5.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [#&#8203;1200](https://redirect.github.com/actions/setup-node/pull/1200)
    - Upgrade
    [@&#8203;action/cache](https://redirect.github.com/action/cache) from
    4.0.0 to 4.0.2 by
    [@&#8203;gowridurgad](https://redirect.github.com/gowridurgad) in
    [#&#8203;1251](https://redirect.github.com/actions/setup-node/pull/1251)
    - Upgrade [@&#8203;vercel/ncc](https://redirect.github.com/vercel/ncc)
    from 0.38.1 to 0.38.3 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [#&#8203;1203](https://redirect.github.com/actions/setup-node/pull/1203)
    - Upgrade
    [@&#8203;actions/tool-cache](https://redirect.github.com/actions/tool-cache)
    from 2.0.1 to 2.0.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [#&#8203;1220](https://redirect.github.com/actions/setup-node/pull/1220)
    
    ##### New Contributors
    
    - [@&#8203;gowridurgad](https://redirect.github.com/gowridurgad) made
    their first contribution in
    [#&#8203;1251](https://redirect.github.com/actions/setup-node/pull/1251)
    
    **Full Changelog**:
    <https://github.com/actions/setup-node/compare/v4...v4.3.0>
    
    </details>
    
    <details>
    <summary>docker/setup-buildx-action
    (docker/setup-buildx-action)</summary>
    
    ###
    [`v4.0.0`](https://redirect.github.com/docker/setup-buildx-action/releases/tag/v4.0.0)
    
    [Compare
    Source](https://redirect.github.com/docker/setup-buildx-action/compare/v3.12.0...v4.0.0)
    
    - Node 24 as default runtime (requires [Actions Runner
    v2.327.1](https://redirect.github.com/actions/runner/releases/tag/v2.327.1)
    or later) by [@&#8203;crazy-max](https://redirect.github.com/crazy-max)
    in
    [#&#8203;483](https://redirect.github.com/docker/setup-buildx-action/pull/483)
    - Remove deprecated inputs/outputs by
    [@&#8203;crazy-max](https://redirect.github.com/crazy-max) in
    [#&#8203;464](https://redirect.github.com/docker/setup-buildx-action/pull/464)
    - Switch to ESM and update config/test wiring by
    [@&#8203;crazy-max](https://redirect.github.com/crazy-max) in
    [#&#8203;481](https://redirect.github.com/docker/setup-buildx-action/pull/481)
    - Bump [@&#8203;actions/core](https://redirect.github.com/actions/core)
    from 1.11.1 to 3.0.0 in
    [#&#8203;475](https://redirect.github.com/docker/setup-buildx-action/pull/475)
    - Bump
    [@&#8203;docker/actions-toolkit](https://redirect.github.com/docker/actions-toolkit)
    from 0.63.0 to 0.79.0 in
    [#&#8203;482](https://redirect.github.com/docker/setup-buildx-action/pull/482)
    [#&#8203;485](https://redirect.github.com/docker/setup-buildx-action/pull/485)
    - Bump js-yaml from 4.1.0 to 4.1.1 in
    [#&#8203;452](https://redirect.github.com/docker/setup-buildx-action/pull/452)
    - Bump lodash from 4.17.21 to 4.17.23 in
    [#&#8203;472](https://redirect.github.com/docker/setup-buildx-action/pull/472)
    - Bump minimatch from 3.1.2 to 3.1.5 in
    [#&#8203;480](https://redirect.github.com/docker/setup-buildx-action/pull/480)
    
    **Full Changelog**:
    <https://github.com/docker/setup-buildx-action/compare/v3.12.0...v4.0.0>
    
    </details>
    
    <details>
    <summary>docker/setup-qemu-action (docker/setup-qemu-action)</summary>
    
    ###
    [`v4.0.0`](https://redirect.github.com/docker/setup-qemu-action/releases/tag/v4.0.0)
    
    [Compare
    Source](https://redirect.github.com/docker/setup-qemu-action/compare/v3.7.0...v4.0.0)
    
    - Node 24 as default runtime (requires [Actions Runner
    v2.327.1](https://redirect.github.com/actions/runner/releases/tag/v2.327.1)
    or later) by [@&#8203;crazy-max](https://redirect.github.com/crazy-max)
    in
    [#&#8203;245](https://redirect.github.com/docker/setup-qemu-action/pull/245)
    - Switch to ESM and update config/test wiring by
    [@&#8203;crazy-max](https://redirect.github.com/crazy-max) in
    [#&#8203;241](https://redirect.github.com/docker/setup-qemu-action/pull/241)
    - Bump [@&#8203;actions/core](https://redirect.github.com/actions/core)
    from 1.11.1 to 3.0.0 in
    [#&#8203;244](https://redirect.github.com/docker/setup-qemu-action/pull/244)
    - Bump
    [@&#8203;docker/actions-toolkit](https://redirect.github.com/docker/actions-toolkit)
    from 0.67.0 to 0.77.0 in
    [#&#8203;243](https://redirect.github.com/docker/setup-qemu-action/pull/243)
    - Bump
    [@&#8203;isaacs/brace-expansion](https://redirect.github.com/isaacs/brace-expansion)
    from 5.0.0 to 5.0.1 in
    [#&#8203;240](https://redirect.github.com/docker/setup-qemu-action/pull/240)
    - Bump js-yaml from 3.14.1 to 3.14.2 in
    [#&#8203;231](https://redirect.github.com/docker/setup-qemu-action/pull/231)
    - Bump lodash from 4.17.21 to 4.17.23 in
    [#&#8203;238](https://redirect.github.com/docker/setup-qemu-action/pull/238)
    
    **Full Changelog**:
    <https://github.com/docker/setup-qemu-action/compare/v3.7.0...v4.0.0>
    
    </details>
    
    <details>
    <summary>actions/node-versions (node)</summary>
    
    ###
    [`v24.14.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.14.0-22380502845):
    24.14.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.13.1-21889660756...24.14.0-22380502845)
    
    Node.js 24.14.0
    
    ###
    [`v24.13.1`](https://redirect.github.com/actions/node-versions/releases/tag/24.13.1-21889660756):
    24.13.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.13.0-20981653924...24.13.1-21889660756)
    
    Node.js 24.13.1
    
    ###
    [`v24.13.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.13.0-20981653924):
    24.13.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.12.0-20140960970...24.13.0-20981653924)
    
    Node.js 24.13.0
    
    ###
    [`v24.12.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.12.0-20140960970):
    24.12.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.11.1-19282993875...24.12.0-20140960970)
    
    Node.js 24.12.0
    
    ###
    [`v24.11.1`](https://redirect.github.com/actions/node-versions/releases/tag/24.11.1-19282993875):
    24.11.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.11.0-18894910158...24.11.1-19282993875)
    
    Node.js 24.11.1
    
    ###
    [`v24.11.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.11.0-18894910158):
    24.11.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.10.0-18453495281...24.11.0-18894910158)
    
    Node.js 24.11.0
    
    ###
    [`v24.10.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.10.0-18453495281):
    24.10.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.9.0-18024003193...24.10.0-18453495281)
    
    Node.js 24.10.0
    
    ###
    [`v24.9.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.9.0-18024003193):
    24.9.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.8.0-17630522236...24.9.0-18024003193)
    
    Node.js 24.9.0
    
    ###
    [`v24.8.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.8.0-17630522236):
    24.8.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.7.0-17283839804...24.8.0-17630522236)
    
    Node.js 24.8.0
    
    ###
    [`v24.7.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.7.0-17283839804):
    24.7.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.6.0-16980723897...24.7.0-17283839804)
    
    Node.js 24.7.0
    
    ###
    [`v24.6.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.6.0-16980723897):
    24.6.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.5.0-16666195981...24.6.0-16980723897)
    
    Node.js 24.6.0
    
    ###
    [`v24.5.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.5.0-16666195981):
    24.5.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.4.1-16309768053...24.5.0-16666195981)
    
    Node.js 24.5.0
    
    ###
    [`v24.4.1`](https://redirect.github.com/actions/node-versions/releases/tag/24.4.1-16309768053):
    24.4.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.4.0-16210503505...24.4.1-16309768053)
    
    Node.js 24.4.1
    
    ###
    [`v24.4.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.4.0-16210503505):
    24.4.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.3.0-15866716565...24.4.0-16210503505)
    
    Node.js 24.4.0
    
    ###
    [`v24.3.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.3.0-15866716565):
    24.3.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.2.0-15549907769...24.3.0-15866716565)
    
    Node.js 24.3.0
    
    ###
    [`v24.2.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.2.0-15549907769):
    24.2.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.1.0-15177436545...24.2.0-15549907769)
    
    Node.js 24.2.0
    
    ###
    [`v24.1.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.1.0-15177436545):
    24.1.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.0.2-15035852679...24.1.0-15177436545)
    
    Node.js 24.1.0
    
    ###
    [`v24.0.2`](https://redirect.github.com/actions/node-versions/releases/tag/24.0.2-15035852679):
    24.0.2
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.0.1-14928016774...24.0.2-15035852679)
    
    Node.js 24.0.2
    
    ###
    [`v24.0.1`](https://redirect.github.com/actions/node-versions/releases/tag/24.0.1-14928016774):
    24.0.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/24.0.0-14863421234...24.0.1-14928016774)
    
    Node.js 24.0.1
    
    ###
    [`v24.0.0`](https://redirect.github.com/actions/node-versions/releases/tag/24.0.0-14863421234):
    24.0.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.22.1-22746712011...24.0.0-14863421234)
    
    Node.js 24.0.0
    
    ###
    [`v22.22.1`](https://redirect.github.com/actions/node-versions/releases/tag/22.22.1-22746712011):
    22.22.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.22.0-20981702931...22.22.1-22746712011)
    
    Node.js 22.22.1
    
    ###
    [`v22.22.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.22.0-20981702931):
    22.22.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.21.1-18894912842...22.22.0-20981702931)
    
    Node.js 22.22.0
    
    ###
    [`v22.21.1`](https://redirect.github.com/actions/node-versions/releases/tag/22.21.1-18894912842):
    22.21.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.21.0-18671149699...22.21.1-18894912842)
    
    Node.js 22.21.1
    
    ###
    [`v22.21.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.21.0-18671149699):
    22.21.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.20.0-17993202319...22.21.0-18671149699)
    
    Node.js 22.21.0
    
    ###
    [`v22.20.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.20.0-17993202319):
    22.20.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.19.0-17311483029...22.20.0-17993202319)
    
    Node.js 22.20.0
    
    ###
    [`v22.19.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.19.0-17311483029):
    22.19.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.18.0-16666198358...22.19.0-17311483029)
    
    Node.js 22.19.0
    
    ###
    [`v22.18.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.18.0-16666198358):
    22.18.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.17.1-16309770702...22.18.0-16666198358)
    
    Node.js 22.18.0
    
    ###
    [`v22.17.1`](https://redirect.github.com/actions/node-versions/releases/tag/22.17.1-16309770702):
    22.17.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.17.0-15866718879...22.17.1-16309770702)
    
    Node.js 22.17.1
    
    ###
    [`v22.17.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.17.0-15866718879):
    22.17.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.16.0-15177438473...22.17.0-15866718879)
    
    Node.js 22.17.0
    
    ###
    [`v22.16.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.16.0-15177438473):
    22.16.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.15.1-15035854612...22.16.0-15177438473)
    
    Node.js 22.16.0
    
    ###
    [`v22.15.1`](https://redirect.github.com/actions/node-versions/releases/tag/22.15.1-15035854612):
    22.15.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.15.0-14621731016...22.15.1-15035854612)
    
    Node.js 22.15.1
    
    ###
    [`v22.15.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.15.0-14621731016):
    22.15.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.14.0-13265982013...22.15.0-14621731016)
    
    Node.js 22.15.0
    
    ###
    [`v22.14.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.14.0-13265982013):
    22.14.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.13.1-12900459766...22.14.0-13265982013)
    
    Node.js 22.14.0
    
    ###
    [`v22.13.1`](https://redirect.github.com/actions/node-versions/releases/tag/22.13.1-12900459766):
    22.13.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.13.0-12671059536...22.13.1-12900459766)
    
    Node.js 22.13.1
    
    ###
    [`v22.13.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.13.0-12671059536):
    22.13.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.12.0-12152383658...22.13.0-12671059536)
    
    Node.js 22.13.0
    
    ###
    [`v22.12.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.12.0-12152383658):
    22.12.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.11.0-11593095476...22.12.0-12152383658)
    
    Node.js 22.12.0
    
    ###
    [`v22.11.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.11.0-11593095476):
    22.11.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.10.0-11377615849...22.11.0-11593095476)
    
    Node.js 22.11.0
    
    ###
    [`v22.10.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.10.0-11377615849):
    22.10.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.9.0-10914884886...22.10.0-11377615849)
    
    Node.js 22.10.0
    
    ###
    [`v22.9.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.9.0-10914884886):
    22.9.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.8.0-10685632420...22.9.0-10914884886)
    
    Node.js 22.9.0
    
    ###
    [`v22.8.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.8.0-10685632420):
    22.8.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.7.0-10511334152...22.8.0-10685632420)
    
    Node.js 22.8.0
    
    ###
    [`v22.7.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.7.0-10511334152):
    22.7.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.6.0-10277432289...22.7.0-10511334152)
    
    Node.js 22.7.0
    
    ###
    [`v22.6.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.6.0-10277432289):
    22.6.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.5.1-10010673511...22.6.0-10277432289)
    
    Node.js 22.6.0
    
    ###
    [`v22.5.1`](https://redirect.github.com/actions/node-versions/releases/tag/22.5.1-10010673511):
    22.5.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.5.0-9985144103...22.5.1-10010673511)
    
    Node.js 22.5.1
    
    ###
    [`v22.5.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.5.0-9985144103):
    22.5.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.4.1-9860948056...22.5.0-9985144103)
    
    Node.js 22.5.0
    
    ###
    [`v22.4.1`](https://redirect.github.com/actions/node-versions/releases/tag/22.4.1-9860948056):
    22.4.1
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.4.0-9766506602...22.4.1-9860948056)
    
    Node.js 22.4.1
    
    ###
    [`v22.4.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.4.0-9766506602):
    22.4.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.3.0-9569309553...22.4.0-9766506602)
    
    Node.js 22.4.0
    
    ###
    [`v22.3.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.3.0-9569309553):
    22.3.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.2.0-9105861751...22.3.0-9569309553)
    
    Node.js 22.3.0
    
    ###
    [`v22.2.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.2.0-9105861751):
    22.2.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.1.0-8926142033...22.2.0-9105861751)
    
    Node.js 22.2.0
    
    ###
    [`v22.1.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.1.0-8926142033):
    22.1.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/22.0.0-8879734543...22.1.0-8926142033)
    
    Node.js 22.1.0
    
    ###
    [`v22.0.0`](https://redirect.github.com/actions/node-versions/releases/tag/22.0.0-8879734543):
    22.0.0
    
    [Compare
    Source](https://redirect.github.com/actions/node-versions/compare/20.20.1-22746716736...22.0.0-8879734543)
    
    Node.js 22.0.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0My41OS4wIiwidXBkYXRlZEluVmVyIjoiNDMuNTkuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
