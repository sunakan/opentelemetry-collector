commit 59b1607c631e14b7d62d814c470fab4cb93a1b1e
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue May 14 13:07:19 2024 -0700

    Update github-actions deps (#10145)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [actions/checkout](https://togithub.com/actions/checkout) | action |
    patch | `v4.1.4` -> `v4.1.5` |
    | [codecov/codecov-action](https://togithub.com/codecov/codecov-action)
    | action | minor | `4.3.1` -> `4.4.0` |
    | [github/codeql-action](https://togithub.com/github/codeql-action) |
    action | patch | `v3.25.3` -> `v3.25.5` |
    |
    [goreleaser/goreleaser-action](https://togithub.com/goreleaser/goreleaser-action)
    | action | minor | `v5.0.0` -> `v5.1.0` |
    | [ossf/scorecard-action](https://togithub.com/ossf/scorecard-action) |
    action | patch | `v2.3.1` -> `v2.3.3` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/checkout (actions/checkout)</summary>
    
    ###
    [`v4.1.5`](https://togithub.com/actions/checkout/releases/tag/v4.1.5)
    
    [Compare
    Source](https://togithub.com/actions/checkout/compare/v4.1.4...v4.1.5)
    
    #### What's Changed
    
    - Update NPM dependencies by
    [@&#8203;cory-miller](https://togithub.com/cory-miller) in
    [https://github.com/actions/checkout/pull/1703](https://togithub.com/actions/checkout/pull/1703)
    - Bump github/codeql-action from 2 to 3 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/actions/checkout/pull/1694](https://togithub.com/actions/checkout/pull/1694)
    - Bump actions/setup-node from 1 to 4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/actions/checkout/pull/1696](https://togithub.com/actions/checkout/pull/1696)
    - Bump actions/upload-artifact from 2 to 4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/actions/checkout/pull/1695](https://togithub.com/actions/checkout/pull/1695)
    - README: Suggest `user.email` to be
    `41898282+github-actions[bot]@&#8203;users.noreply.github.com` by
    [@&#8203;cory-miller](https://togithub.com/cory-miller) in
    [https://github.com/actions/checkout/pull/1707](https://togithub.com/actions/checkout/pull/1707)
    
    **Full Changelog**:
    https://github.com/actions/checkout/compare/v4.1.4...v4.1.5
    
    </details>
    
    <details>
    <summary>codecov/codecov-action (codecov/codecov-action)</summary>
    
    ###
    [`v4.4.0`](https://togithub.com/codecov/codecov-action/compare/v4.3.1...v4.4.0)
    
    [Compare
    Source](https://togithub.com/codecov/codecov-action/compare/v4.3.1...v4.4.0)
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v3.25.5`](https://togithub.com/github/codeql-action/compare/v3.25.4...v3.25.5)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.25.4...v3.25.5)
    
    ###
    [`v3.25.4`](https://togithub.com/github/codeql-action/compare/v3.25.3...v3.25.4)
    
    [Compare
    Source](https://togithub.com/github/codeql-action/compare/v3.25.3...v3.25.4)
    
    </details>
    
    <details>
    <summary>goreleaser/goreleaser-action
    (goreleaser/goreleaser-action)</summary>
    
    ###
    [`v5.1.0`](https://togithub.com/goreleaser/goreleaser-action/releases/tag/v5.1.0)
    
    [Compare
    Source](https://togithub.com/goreleaser/goreleaser-action/compare/v5.0.0...v5.1.0)
    
    #### Important
    
    This version changes the default behavior of `latest` to `~> v1`.
    
    The next major of this action (v6), will change this to `~> v2`, and
    will be launched together with GoReleaser v2.
    
    #### What's Changed
    
    - docs: bump actions to latest major by
    [@&#8203;crazy-max](https://togithub.com/crazy-max) in
    [https://github.com/goreleaser/goreleaser-action/pull/435](https://togithub.com/goreleaser/goreleaser-action/pull/435)
    - chore(deps): bump docker/bake-action from 3 to 4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/goreleaser/goreleaser-action/pull/436](https://togithub.com/goreleaser/goreleaser-action/pull/436)
    - chore(deps): bump codecov/codecov-action from 3 to 4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/goreleaser/goreleaser-action/pull/437](https://togithub.com/goreleaser/goreleaser-action/pull/437)
    - chore(deps): bump actions/setup-go from 4 to 5 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/goreleaser/goreleaser-action/pull/443](https://togithub.com/goreleaser/goreleaser-action/pull/443)
    - chore(deps): bump actions/upload-artifact from 3 to 4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/goreleaser/goreleaser-action/pull/444](https://togithub.com/goreleaser/goreleaser-action/pull/444)
    - Delete .kodiak.toml by
    [@&#8203;vedantmgoyal9](https://togithub.com/vedantmgoyal9) in
    [https://github.com/goreleaser/goreleaser-action/pull/446](https://togithub.com/goreleaser/goreleaser-action/pull/446)
    - chore(deps): bump codecov/codecov-action from 3 to 4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/goreleaser/goreleaser-action/pull/448](https://togithub.com/goreleaser/goreleaser-action/pull/448)
    - chore(deps): bump ip from 2.0.0 to 2.0.1 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/goreleaser/goreleaser-action/pull/450](https://togithub.com/goreleaser/goreleaser-action/pull/450)
    - Upgrade setup-go action version in README by
    [@&#8203;kishaningithub](https://togithub.com/kishaningithub) in
    [https://github.com/goreleaser/goreleaser-action/pull/455](https://togithub.com/goreleaser/goreleaser-action/pull/455)
    - chore(deps): bump tar from 6.1.14 to 6.2.1 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/goreleaser/goreleaser-action/pull/456](https://togithub.com/goreleaser/goreleaser-action/pull/456)
    - chore: use corepack to install yarn by
    [@&#8203;crazy-max](https://togithub.com/crazy-max) in
    [https://github.com/goreleaser/goreleaser-action/pull/458](https://togithub.com/goreleaser/goreleaser-action/pull/458)
    - feat: lock this major version of the action to use '~> v1' as 'latest'
    by [@&#8203;caarlos0](https://togithub.com/caarlos0) in
    [https://github.com/goreleaser/goreleaser-action/pull/461](https://togithub.com/goreleaser/goreleaser-action/pull/461)
    - chore(deps): bump semver from 7.6.0 to 7.6.2 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/goreleaser/goreleaser-action/pull/462](https://togithub.com/goreleaser/goreleaser-action/pull/462)
    - chore(deps): bump
    [@&#8203;actions/http-client](https://togithub.com/actions/http-client)
    from 2.2.0 to 2.2.1 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/goreleaser/goreleaser-action/pull/451](https://togithub.com/goreleaser/goreleaser-action/pull/451)
    
    #### New Contributors
    
    - [@&#8203;vedantmgoyal9](https://togithub.com/vedantmgoyal9) made their
    first contribution in
    [https://github.com/goreleaser/goreleaser-action/pull/446](https://togithub.com/goreleaser/goreleaser-action/pull/446)
    
    **Full Changelog**:
    https://github.com/goreleaser/goreleaser-action/compare/v5.0.0...v5.1.0
    
    </details>
    
    <details>
    <summary>ossf/scorecard-action (ossf/scorecard-action)</summary>
    
    ###
    [`v2.3.3`](https://togithub.com/ossf/scorecard-action/compare/v2.3.2...v2.3.3)
    
    [Compare
    Source](https://togithub.com/ossf/scorecard-action/compare/v2.3.2...v2.3.3)
    
    ###
    [`v2.3.2`](https://togithub.com/ossf/scorecard-action/compare/v2.3.1...v2.3.2)
    
    [Compare
    Source](https://togithub.com/ossf/scorecard-action/compare/v2.3.1...v2.3.2)
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4zNTEuMiIsInVwZGF0ZWRJblZlciI6IjM3LjM1MS4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
