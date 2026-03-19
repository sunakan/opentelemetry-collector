commit f78c1b17d1351d0beb35fe7c147435bbf57a1dbb
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Fri Jul 25 04:56:04 2025 +0000

    Update github-actions deps (#13218)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [anchore/sbom-action](https://redirect.github.com/anchore/sbom-action)
    | action | patch | `v0.20.0` -> `v0.20.4` |
    |
    [docker/setup-buildx-action](https://redirect.github.com/docker/setup-buildx-action)
    | action | minor | `v3.10.0` -> `v3.11.1` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | patch | `v3.29.0` -> `v3.29.4` |
    | lycheeverse/lychee-action | action | digest | `82202e5` -> `5c4ee84` |
    |
    [sigstore/cosign-installer](https://redirect.github.com/sigstore/cosign-installer)
    | action | minor | `v3.8.2` -> `v3.9.2` |
    |
    [streetsidesoftware/cspell-action](https://redirect.github.com/streetsidesoftware/cspell-action)
    | action | minor | `v7.0.1` -> `v7.1.2` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>anchore/sbom-action (anchore/sbom-action)</summary>
    
    ###
    [`v0.20.4`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.20.4)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.20.3...v0.20.4)
    
    #### Changes in v0.20.4
    
    - chore: update Syft to v1.29.0
    ([#&#8203;529](https://redirect.github.com/anchore/sbom-action/issues/529))
    
    ###
    [`v0.20.3`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.20.3)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.20.2...v0.20.3)
    
    #### Changes in v0.20.3
    
    - Fix: Strip emojis from correlator before using github APIs
    ([#&#8203;527](https://redirect.github.com/anchore/sbom-action/issues/527))
    \[[AndrewHendry](https://redirect.github.com/AndrewHendry)]
    
    ###
    [`v0.20.2`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.20.2)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.20.1...v0.20.2)
    
    #### Changes in v0.20.2
    
    - Update Syft to v1.28.0
    ([#&#8203;526](https://redirect.github.com/anchore/sbom-action/issues/526))
    
    ###
    [`v0.20.1`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.20.1)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.20.0...v0.20.1)
    
    #### Changes in v0.20.1
    
    - Update Syft to v1.27.1
    ([#&#8203;525](https://redirect.github.com/anchore/sbom-action/issues/525))
    
    </details>
    
    <details>
    <summary>docker/setup-buildx-action
    (docker/setup-buildx-action)</summary>
    
    ###
    [`v3.11.1`](https://redirect.github.com/docker/setup-buildx-action/releases/tag/v3.11.1)
    
    [Compare
    Source](https://redirect.github.com/docker/setup-buildx-action/compare/v3.11.0...v3.11.1)
    
    - Fix `keep-state` not being respected by
    [@&#8203;crazy-max](https://redirect.github.com/crazy-max) in
    [https://github.com/docker/setup-buildx-action/pull/429](https://redirect.github.com/docker/setup-buildx-action/pull/429)
    
    **Full Changelog**:
    https://github.com/docker/setup-buildx-action/compare/v3.11.0...v3.11.1
    
    ###
    [`v3.11.0`](https://redirect.github.com/docker/setup-buildx-action/releases/tag/v3.11.0)
    
    [Compare
    Source](https://redirect.github.com/docker/setup-buildx-action/compare/v3.10.0...v3.11.0)
    
    - Keep BuildKit state support by
    [@&#8203;crazy-max](https://redirect.github.com/crazy-max) in
    [https://github.com/docker/setup-buildx-action/pull/427](https://redirect.github.com/docker/setup-buildx-action/pull/427)
    - Remove aliases created when installing by default by
    [@&#8203;hashhar](https://redirect.github.com/hashhar) in
    [https://github.com/docker/setup-buildx-action/pull/139](https://redirect.github.com/docker/setup-buildx-action/pull/139)
    - Bump
    [@&#8203;docker/actions-toolkit](https://redirect.github.com/docker/actions-toolkit)
    from 0.56.0 to 0.62.1 in
    [https://github.com/docker/setup-buildx-action/pull/422](https://redirect.github.com/docker/setup-buildx-action/pull/422)
    [https://github.com/docker/setup-buildx-action/pull/425](https://redirect.github.com/docker/setup-buildx-action/pull/425)
    
    **Full Changelog**:
    https://github.com/docker/setup-buildx-action/compare/v3.10.0...v3.11.0
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v3.29.4`](https://redirect.github.com/github/codeql-action/releases/tag/v3.29.4)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.29.3...v3.29.4)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 3.29.4 - 23 Jul 2025
    
    No user facing changes.
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.29.4/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.29.3`](https://redirect.github.com/github/codeql-action/releases/tag/v3.29.3)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.29.2...v3.29.3)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 3.29.3 - 21 Jul 2025
    
    No user facing changes.
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.29.3/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.29.2`](https://redirect.github.com/github/codeql-action/releases/tag/v3.29.2)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.29.1...v3.29.2)
    
    ##### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    ##### 3.29.2 - 30 Jun 2025
    
    - Experimental: When the `quality-queries` input for the `init` action
    is provided with an argument, separate `.quality.sarif` files are
    produced and uploaded for each language with the results of the
    specified queries. Do not use this in production as it is part of an
    internal experiment and subject to change at any time.
    [#&#8203;2935](https://redirect.github.com/github/codeql-action/pull/2935)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.29.2/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.29.1`](https://redirect.github.com/github/codeql-action/releases/tag/v3.29.1)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.29.0...v3.29.1)
    
    ##### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    ##### 3.29.1 - 27 Jun 2025
    
    - Fix bug in PR analysis where user-provided `include` query filter
    fails to exclude non-included queries.
    [#&#8203;2938](https://redirect.github.com/github/codeql-action/pull/2938)
    - Update default CodeQL bundle version to 2.22.1.
    [#&#8203;2950](https://redirect.github.com/github/codeql-action/pull/2950)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.29.1/CHANGELOG.md)
    for more information.
    
    </details>
    
    <details>
    <summary>sigstore/cosign-installer (sigstore/cosign-installer)</summary>
    
    ###
    [`v3.9.2`](https://redirect.github.com/sigstore/cosign-installer/releases/tag/v3.9.2)
    
    [Compare
    Source](https://redirect.github.com/sigstore/cosign-installer/compare/v3.9.1...v3.9.2)
    
    #### What's Changed
    
    - not fail fast and setup permissions in
    [https://github.com/sigstore/cosign-installer/pull/195](https://redirect.github.com/sigstore/cosign-installer/pull/195)
    - drop old unsupported versions \<v2.0.0
    in[https://github.com/sigstore/cosign-installer/pull/192](https://redirect.github.com/sigstore/cosign-installer/pull/192)2
    - Update default to v2.5.3 in
    [https://github.com/sigstore/cosign-installer/pull/196](https://redirect.github.com/sigstore/cosign-installer/pull/196)
    
    **Full Changelog**:
    https://github.com/sigstore/cosign-installer/compare/v3.9.1...v3.9.2
    
    ###
    [`v3.9.1`](https://redirect.github.com/sigstore/cosign-installer/releases/tag/v3.9.1)
    
    [Compare
    Source](https://redirect.github.com/sigstore/cosign-installer/compare/v3.9.0...v3.9.1)
    
    ##### What's Changed
    
    - default action install to use release v2.5.1 by
    [@&#8203;cpanato](https://redirect.github.com/cpanato) in
    [https://github.com/sigstore/cosign-installer/pull/193](https://redirect.github.com/sigstore/cosign-installer/pull/193)
    - default cosign to v2.5.2 by
    [@&#8203;cpanato](https://redirect.github.com/cpanato) in
    [https://github.com/sigstore/cosign-installer/pull/194](https://redirect.github.com/sigstore/cosign-installer/pull/194)
    
    **Full Changelog**:
    https://github.com/sigstore/cosign-installer/compare/v3.9.0...v3.9.1
    
    ###
    [`v3.9.0`](https://redirect.github.com/sigstore/cosign-installer/releases/tag/v3.9.0)
    
    [Compare
    Source](https://redirect.github.com/sigstore/cosign-installer/compare/v3.8.2...v3.9.0)
    
    #### What's Changed
    
    - Bump actions/setup-go from 5.4.0 to 5.5.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/sigstore/cosign-installer/pull/189](https://redirect.github.com/sigstore/cosign-installer/pull/189)
    - bump cosign install to use release v2.5.0 as default by
    [@&#8203;cpanato](https://redirect.github.com/cpanato) in
    [https://github.com/sigstore/cosign-installer/pull/191](https://redirect.github.com/sigstore/cosign-installer/pull/191)
    
    **Full Changelog**:
    https://github.com/sigstore/cosign-installer/compare/v3...v3.9.0
    
    </details>
    
    <details>
    <summary>streetsidesoftware/cspell-action
    (streetsidesoftware/cspell-action)</summary>
    
    ###
    [`v7.1.2`](https://redirect.github.com/streetsidesoftware/cspell-action/releases/tag/v7.1.2)
    
    [Compare
    Source](https://redirect.github.com/streetsidesoftware/cspell-action/compare/v7.1.1...v7.1.2)
    
    ##### Updates and Bug Fixes
    
    - Update CSpell version (9.1.5)
    ([#&#8203;2389](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2389))
    ([47fec0d](https://redirect.github.com/streetsidesoftware/cspell-action/commit/47fec0d74e8005471f57aeaa4b86ae2bc5197de1))
    - Update Dictionaries and Dependencies
    ([#&#8203;2385](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2385))
    ([b8baba1](https://redirect.github.com/streetsidesoftware/cspell-action/commit/b8baba18fc56d1bd8b64f0b96cab31978c2e802c))
    
    ###
    [`v7.1.1`](https://redirect.github.com/streetsidesoftware/cspell-action/releases/tag/v7.1.1)
    
    [Compare
    Source](https://redirect.github.com/streetsidesoftware/cspell-action/compare/v7.1.0...v7.1.1)
    
    ##### Updates and Bug Fixes
    
    - Update CSpell version (9.1.3)
    ([#&#8203;2379](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2379))
    ([eea88e2](https://redirect.github.com/streetsidesoftware/cspell-action/commit/eea88e2027d7fc06674cd07e7de6900bbabb7e14))
    - Update Dictionaries and Dependencies
    ([#&#8203;2381](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2381))
    ([b20f418](https://redirect.github.com/streetsidesoftware/cspell-action/commit/b20f418665bd5e3d6ff63cd693178ce53fffd3e4))
    
    ###
    [`v7.1.0`](https://redirect.github.com/streetsidesoftware/cspell-action/releases/tag/v7.1.0)
    
    [Compare
    Source](https://redirect.github.com/streetsidesoftware/cspell-action/compare/v7.0.1...v7.1.0)
    
    ##### Features
    
    - expose the `report` argument via the action inputs
    ([#&#8203;2373](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2373))
    ([e874b8c](https://redirect.github.com/streetsidesoftware/cspell-action/commit/e874b8c631e636f80da2bb9a6482b1f9aadc25e3))
    - Update CSpell version (9.1.1)
    ([#&#8203;2349](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2349))
    ([dafdece](https://redirect.github.com/streetsidesoftware/cspell-action/commit/dafdecea11fc19e66214f84274d37fe4cb2a4eaf))
    
    ##### Updates and Bug Fixes
    
    - Update CSpell version (9.1.2)
    ([#&#8203;2358](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2358))
    ([4082801](https://redirect.github.com/streetsidesoftware/cspell-action/commit/4082801fef050a36832116fc91253dc99581fc67))
    - Update Dictionaries and Dependencies
    ([#&#8203;2341](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2341))
    ([366bfc1](https://redirect.github.com/streetsidesoftware/cspell-action/commit/366bfc1caa7b4630d15720d5eca25e3999557e5e))
    - Update Dictionaries and Dependencies
    ([#&#8203;2345](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2345))
    ([0c9416c](https://redirect.github.com/streetsidesoftware/cspell-action/commit/0c9416cecf6c064a91a379dec294680ee50a0477))
    - Update Dictionaries and Dependencies
    ([#&#8203;2348](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2348))
    ([acadf5d](https://redirect.github.com/streetsidesoftware/cspell-action/commit/acadf5d06be20fb20edbf721ee9413f07a396704))
    - Update Dictionaries and Dependencies
    ([#&#8203;2355](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2355))
    ([1493194](https://redirect.github.com/streetsidesoftware/cspell-action/commit/1493194a86d1cabc4f5b030fc383a0fcb4710542))
    - Update Dictionaries and Dependencies
    ([#&#8203;2363](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2363))
    ([806cff9](https://redirect.github.com/streetsidesoftware/cspell-action/commit/806cff988bb291083f108acdbda7a8ef6e2bf3a2))
    - Update Dictionaries and Dependencies
    ([#&#8203;2372](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2372))
    ([b343c10](https://redirect.github.com/streetsidesoftware/cspell-action/commit/b343c1031a2167562f1eda3cb757678589e4999d))
    - Workflow Bot -- Update ALL Dependencies (main)
    ([#&#8203;2335](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2335))
    ([1d972ad](https://redirect.github.com/streetsidesoftware/cspell-action/commit/1d972adc57b4cfe67aeeba47dd836897afbe8926))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MC41MC4wIiwidXBkYXRlZEluVmVyIjoiNDEuNDAuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
