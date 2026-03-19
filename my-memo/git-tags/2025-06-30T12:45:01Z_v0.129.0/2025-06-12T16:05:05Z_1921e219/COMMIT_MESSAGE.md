commit 1921e219dc14c25526e03c00123822ab3a243bb7
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Thu Jun 12 16:05:05 2025 +0000

    chore(deps): update github-actions deps (#13135)
    
    This PR contains the following updates:
    
    | Package | Type | Update | Change |
    |---|---|---|---|
    | [actions/cache](https://redirect.github.com/actions/cache) | action |
    patch | `v4.2.2` -> `v4.2.3` |
    |
    [actions/download-artifact](https://redirect.github.com/actions/download-artifact)
    | action | minor | `v4.1.9` -> `v4.3.0` |
    | [actions/setup-go](https://redirect.github.com/actions/setup-go) |
    action | minor | `v5.3.0` -> `v5.5.0` |
    | [actions/setup-go](https://redirect.github.com/actions/setup-go) |
    action | digest | `0aaccfd` -> `d35c59a` |
    |
    [actions/upload-artifact](https://redirect.github.com/actions/upload-artifact)
    | action | patch | `v4.6.1` -> `v4.6.2` |
    | [anchore/sbom-action](https://redirect.github.com/anchore/sbom-action)
    | action | minor | `v0.18.0` -> `v0.20.0` |
    |
    [codecov/codecov-action](https://redirect.github.com/codecov/codecov-action)
    | action | patch | `5.4.0` -> `5.4.3` |
    | [fossas/fossa-action](https://redirect.github.com/fossas/fossa-action)
    | action | minor | `v1.5.0` -> `v1.7.0` |
    |
    [github/codeql-action](https://redirect.github.com/github/codeql-action)
    | action | minor | `v3.28.11` -> `v3.29.0` |
    | [go](https://redirect.github.com/actions/go-versions) | uses-with |
    minor | `1.23.10` -> `1.24.4` |
    |
    [goreleaser/goreleaser-action](https://redirect.github.com/goreleaser/goreleaser-action)
    | action | minor | `v6.2.1` -> `v6.3.0` |
    | lycheeverse/lychee-action | action | digest | `f613c4a` -> `82202e5` |
    |
    [ossf/scorecard-action](https://redirect.github.com/ossf/scorecard-action)
    | action | patch | `v2.4.1` -> `v2.4.2` |
    |
    [sigstore/cosign-installer](https://redirect.github.com/sigstore/cosign-installer)
    | action | patch | `v3.8.1` -> `v3.8.2` |
    |
    [streetsidesoftware/cspell-action](https://redirect.github.com/streetsidesoftware/cspell-action)
    | action | patch | `v7.0.0` -> `v7.0.1` |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>actions/cache (actions/cache)</summary>
    
    ###
    [`v4.2.3`](https://redirect.github.com/actions/cache/releases/tag/v4.2.3)
    
    [Compare
    Source](https://redirect.github.com/actions/cache/compare/v4.2.2...v4.2.3)
    
    ##### What's Changed
    
    - Update to use
    [@&#8203;actions/cache](https://redirect.github.com/actions/cache) 4.0.3
    package & prepare for new release by
    [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) in
    [https://github.com/actions/cache/pull/1577](https://redirect.github.com/actions/cache/pull/1577)
    (SAS tokens for cache entries are now masked in debug logs)
    
    ##### New Contributors
    
    - [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) made their
    first contribution in
    [https://github.com/actions/cache/pull/1577](https://redirect.github.com/actions/cache/pull/1577)
    
    **Full Changelog**:
    https://github.com/actions/cache/compare/v4.2.2...v4.2.3
    
    </details>
    
    <details>
    <summary>actions/download-artifact (actions/download-artifact)</summary>
    
    ###
    [`v4.3.0`](https://redirect.github.com/actions/download-artifact/releases/tag/v4.3.0)
    
    [Compare
    Source](https://redirect.github.com/actions/download-artifact/compare/v4.2.1...v4.3.0)
    
    #### What's Changed
    
    - feat: implement new `artifact-ids` input by
    [@&#8203;GrantBirki](https://redirect.github.com/GrantBirki) in
    [https://github.com/actions/download-artifact/pull/401](https://redirect.github.com/actions/download-artifact/pull/401)
    - Fix workflow example for downloading by artifact ID by
    [@&#8203;joshmgross](https://redirect.github.com/joshmgross) in
    [https://github.com/actions/download-artifact/pull/402](https://redirect.github.com/actions/download-artifact/pull/402)
    - Prep for v4.3.0 release by
    [@&#8203;robherley](https://redirect.github.com/robherley) in
    [https://github.com/actions/download-artifact/pull/404](https://redirect.github.com/actions/download-artifact/pull/404)
    
    #### New Contributors
    
    - [@&#8203;GrantBirki](https://redirect.github.com/GrantBirki) made
    their first contribution in
    [https://github.com/actions/download-artifact/pull/401](https://redirect.github.com/actions/download-artifact/pull/401)
    
    **Full Changelog**:
    https://github.com/actions/download-artifact/compare/v4.2.1...v4.3.0
    
    ###
    [`v4.2.1`](https://redirect.github.com/actions/download-artifact/releases/tag/v4.2.1)
    
    [Compare
    Source](https://redirect.github.com/actions/download-artifact/compare/v4.2.0...v4.2.1)
    
    ##### What's Changed
    
    - Add unit tests by
    [@&#8203;GhadimiR](https://redirect.github.com/GhadimiR) in
    [https://github.com/actions/download-artifact/pull/392](https://redirect.github.com/actions/download-artifact/pull/392)
    - Fix bug introduced in 4.2.0 by
    [@&#8203;GhadimiR](https://redirect.github.com/GhadimiR) in
    [https://github.com/actions/download-artifact/pull/391](https://redirect.github.com/actions/download-artifact/pull/391)
    
    **Full Changelog**:
    https://github.com/actions/download-artifact/compare/v4.2.0...v4.2.1
    
    ###
    [`v4.2.0`](https://redirect.github.com/actions/download-artifact/releases/tag/v4.2.0)
    
    [Compare
    Source](https://redirect.github.com/actions/download-artifact/compare/v4.1.9...v4.2.0)
    
    ##### What's Changed
    
    - Update README.md by
    [@&#8203;lkfortuna](https://redirect.github.com/lkfortuna) in
    [https://github.com/actions/download-artifact/pull/384](https://redirect.github.com/actions/download-artifact/pull/384)
    - Bump artifact version, do digest check by
    [@&#8203;GhadimiR](https://redirect.github.com/GhadimiR) in
    [https://github.com/actions/download-artifact/pull/383](https://redirect.github.com/actions/download-artifact/pull/383)
    
    ##### New Contributors
    
    - [@&#8203;lkfortuna](https://redirect.github.com/lkfortuna) made their
    first contribution in
    [https://github.com/actions/download-artifact/pull/384](https://redirect.github.com/actions/download-artifact/pull/384)
    - [@&#8203;GhadimiR](https://redirect.github.com/GhadimiR) made their
    first contribution in
    [https://github.com/actions/download-artifact/pull/383](https://redirect.github.com/actions/download-artifact/pull/383)
    
    **Full Changelog**:
    https://github.com/actions/download-artifact/compare/v4.1.9...v4.2.0
    
    </details>
    
    <details>
    <summary>actions/setup-go (actions/setup-go)</summary>
    
    ###
    [`v5.5.0`](https://redirect.github.com/actions/setup-go/releases/tag/v5.5.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-go/compare/v5.4.0...v5.5.0)
    
    #### What's Changed
    
    ##### Bug fixes:
    
    - Update self-hosted environment validation by
    [@&#8203;priyagupta108](https://redirect.github.com/priyagupta108) in
    [https://github.com/actions/setup-go/pull/556](https://redirect.github.com/actions/setup-go/pull/556)
    - Add manifest validation and improve error handling by
    [@&#8203;priyagupta108](https://redirect.github.com/priyagupta108) in
    [https://github.com/actions/setup-go/pull/586](https://redirect.github.com/actions/setup-go/pull/586)
    - Update template link by
    [@&#8203;jsoref](https://redirect.github.com/jsoref) in
    [https://github.com/actions/setup-go/pull/527](https://redirect.github.com/actions/setup-go/pull/527)
    
    ##### Dependency  updates:
    
    - Upgrade
    [@&#8203;action/cache](https://redirect.github.com/action/cache) from
    4.0.2 to 4.0.3 by
    [@&#8203;aparnajyothi-y](https://redirect.github.com/aparnajyothi-y) in
    [https://github.com/actions/setup-go/pull/574](https://redirect.github.com/actions/setup-go/pull/574)
    - Upgrade
    [@&#8203;actions/glob](https://redirect.github.com/actions/glob) from
    0.4.0 to 0.5.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/actions/setup-go/pull/573](https://redirect.github.com/actions/setup-go/pull/573)
    - Upgrade ts-jest from 29.1.2 to 29.3.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/actions/setup-go/pull/582](https://redirect.github.com/actions/setup-go/pull/582)
    - Upgrade eslint-plugin-jest from 27.9.0 to 28.11.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/actions/setup-go/pull/537](https://redirect.github.com/actions/setup-go/pull/537)
    
    #### New Contributors
    
    - [@&#8203;jsoref](https://redirect.github.com/jsoref) made their first
    contribution in
    [https://github.com/actions/setup-go/pull/527](https://redirect.github.com/actions/setup-go/pull/527)
    
    **Full Changelog**:
    https://github.com/actions/setup-go/compare/v5...v5.5.0
    
    ###
    [`v5.4.0`](https://redirect.github.com/actions/setup-go/releases/tag/v5.4.0)
    
    [Compare
    Source](https://redirect.github.com/actions/setup-go/compare/v5.3.0...v5.4.0)
    
    #### What's Changed
    
    ##### Dependency updates :
    
    - Upgrade semver from 7.6.0 to 7.6.3 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/actions/setup-go/pull/535](https://redirect.github.com/actions/setup-go/pull/535)
    - Upgrade eslint-config-prettier from 8.10.0 to 10.0.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/actions/setup-go/pull/536](https://redirect.github.com/actions/setup-go/pull/536)
    - Upgrade
    [@&#8203;action/cache](https://redirect.github.com/action/cache) from
    4.0.0 to 4.0.2 by
    [@&#8203;aparnajyothi-y](https://redirect.github.com/aparnajyothi-y) in
    [https://github.com/actions/setup-go/pull/568](https://redirect.github.com/actions/setup-go/pull/568)
    - Upgrade undici from 5.28.4 to 5.28.5 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/actions/setup-go/pull/541](https://redirect.github.com/actions/setup-go/pull/541)
    
    #### New Contributors
    
    - [@&#8203;aparnajyothi-y](https://redirect.github.com/aparnajyothi-y)
    made their first contribution in
    [https://github.com/actions/setup-go/pull/568](https://redirect.github.com/actions/setup-go/pull/568)
    
    **Full Changelog**:
    https://github.com/actions/setup-go/compare/v5...v5.4.0
    
    </details>
    
    <details>
    <summary>actions/upload-artifact (actions/upload-artifact)</summary>
    
    ###
    [`v4.6.2`](https://redirect.github.com/actions/upload-artifact/releases/tag/v4.6.2)
    
    [Compare
    Source](https://redirect.github.com/actions/upload-artifact/compare/v4.6.1...v4.6.2)
    
    ##### What's Changed
    
    - Update to use artifact 2.3.2 package & prepare for new upload-artifact
    release by [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) in
    [https://github.com/actions/upload-artifact/pull/685](https://redirect.github.com/actions/upload-artifact/pull/685)
    
    ##### New Contributors
    
    - [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc) made their
    first contribution in
    [https://github.com/actions/upload-artifact/pull/685](https://redirect.github.com/actions/upload-artifact/pull/685)
    
    **Full Changelog**:
    https://github.com/actions/upload-artifact/compare/v4...v4.6.2
    
    </details>
    
    <details>
    <summary>anchore/sbom-action (anchore/sbom-action)</summary>
    
    ###
    [`v0.20.0`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.20.0)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.19.0...v0.20.0)
    
    ##### Changes in v0.20.0
    
    - chore(deps): update Syft to v1.24.0
    ([#&#8203;522](https://redirect.github.com/anchore/sbom-action/issues/522))
    
    ###
    [`v0.19.0`](https://redirect.github.com/anchore/sbom-action/releases/tag/v0.19.0)
    
    [Compare
    Source](https://redirect.github.com/anchore/sbom-action/compare/v0.18.0...v0.19.0)
    
    #### Changes in v0.19.0
    
    - chore(deps): update Syft to v1.23.0
    ([#&#8203;521](https://redirect.github.com/anchore/sbom-action/issues/521))
    - chore(deps): bump peter-evans/create-pull-request from 7.0.6 to 7.0.8
    ([#&#8203;519](https://redirect.github.com/anchore/sbom-action/issues/519))
    - chore(deps): bump cross-spawn
    ([#&#8203;514](https://redirect.github.com/anchore/sbom-action/issues/514))
    
    </details>
    
    <details>
    <summary>codecov/codecov-action (codecov/codecov-action)</summary>
    
    ###
    [`v5.4.3`](https://redirect.github.com/codecov/codecov-action/blob/HEAD/CHANGELOG.md#v543)
    
    [Compare
    Source](https://redirect.github.com/codecov/codecov-action/compare/v5.4.2...v5.4.3)
    
    ##### What's Changed
    
    - build(deps): bump github/codeql-action from 3.28.13 to 3.28.17 by
    [@&#8203;app/dependabot](https://redirect.github.com/app/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1822](https://redirect.github.com/codecov/codecov-action/pull/1822)
    - fix: OIDC on forks by
    [@&#8203;joseph-sentry](https://redirect.github.com/joseph-sentry) in
    [https://github.com/codecov/codecov-action/pull/1823](https://redirect.github.com/codecov/codecov-action/pull/1823)
    
    **Full Changelog**:
    https://github.com/codecov/codecov-action/compare/v5.4.2..v5.4.3
    
    ###
    [`v5.4.2`](https://redirect.github.com/codecov/codecov-action/blob/HEAD/CHANGELOG.md#v542)
    
    [Compare
    Source](https://redirect.github.com/codecov/codecov-action/compare/v5.4.1...v5.4.2)
    
    ##### What's Changed
    
    **Full Changelog**:
    https://github.com/codecov/codecov-action/compare/v5.4.1..v5.4.2
    
    ###
    [`v5.4.1`](https://redirect.github.com/codecov/codecov-action/blob/HEAD/CHANGELOG.md#v541)
    
    [Compare
    Source](https://redirect.github.com/codecov/codecov-action/compare/v5.4.0...v5.4.1)
    
    ##### What's Changed
    
    - fix: use the github core methods by
    [@&#8203;thomasrockhu-codecov](https://redirect.github.com/thomasrockhu-codecov)
    in
    [https://github.com/codecov/codecov-action/pull/1807](https://redirect.github.com/codecov/codecov-action/pull/1807)
    - build(deps): bump github/codeql-action from 3.28.12 to 3.28.13 by
    [@&#8203;app/dependabot](https://redirect.github.com/app/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1803](https://redirect.github.com/codecov/codecov-action/pull/1803)
    - build(deps): bump github/codeql-action from 3.28.11 to 3.28.12 by
    [@&#8203;app/dependabot](https://redirect.github.com/app/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1797](https://redirect.github.com/codecov/codecov-action/pull/1797)
    - build(deps): bump actions/upload-artifact from 4.6.1 to 4.6.2 by
    [@&#8203;app/dependabot](https://redirect.github.com/app/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1798](https://redirect.github.com/codecov/codecov-action/pull/1798)
    - chore(release): wrapper -0.2.1 by
    [@&#8203;app/codecov-releaser-app](https://redirect.github.com/app/codecov-releaser-app)
    in
    [https://github.com/codecov/codecov-action/pull/1788](https://redirect.github.com/codecov/codecov-action/pull/1788)
    - build(deps): bump github/codeql-action from 3.28.10 to 3.28.11 by
    [@&#8203;app/dependabot](https://redirect.github.com/app/dependabot) in
    [https://github.com/codecov/codecov-action/pull/1786](https://redirect.github.com/codecov/codecov-action/pull/1786)
    
    **Full Changelog**:
    https://github.com/codecov/codecov-action/compare/v5.4.0..v5.4.1
    
    </details>
    
    <details>
    <summary>fossas/fossa-action (fossas/fossa-action)</summary>
    
    ###
    [`v1.7.0`](https://redirect.github.com/fossas/fossa-action/releases/tag/v1.7.0)
    
    [Compare
    Source](https://redirect.github.com/fossas/fossa-action/compare/v1.6.0...v1.7.0)
    
    #### What's Changed
    
    - Adds an optional working directory option to change where FOSSA
    analyzes.
    
    ###
    [`v1.6.0`](https://redirect.github.com/fossas/fossa-action/releases/tag/v1.6.0)
    
    [Compare
    Source](https://redirect.github.com/fossas/fossa-action/compare/v1.5.0...v1.6.0)
    
    #### What's Changed
    
    - Upgrade node to v20 by
    [@&#8203;jssblck](https://redirect.github.com/jssblck) in
    [https://github.com/fossas/fossa-action/pull/60](https://redirect.github.com/fossas/fossa-action/pull/60)
    - Update dependencies, enable auto dependabot by
    [@&#8203;jssblck](https://redirect.github.com/jssblck) in
    [https://github.com/fossas/fossa-action/pull/61](https://redirect.github.com/fossas/fossa-action/pull/61)
    
    **Full Changelog**:
    https://github.com/fossas/fossa-action/compare/v1.5.0...v1.6.0
    
    </details>
    
    <details>
    <summary>github/codeql-action (github/codeql-action)</summary>
    
    ###
    [`v3.29.0`](https://redirect.github.com/github/codeql-action/releases/tag/v3.29.0)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.19...v3.29.0)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 3.29.0 - 11 Jun 2025
    
    - Update default CodeQL bundle version to 2.22.0.
    [#&#8203;2925](https://redirect.github.com/github/codeql-action/pull/2925)
    - Bump minimum CodeQL bundle version to 2.16.6.
    [#&#8203;2912](https://redirect.github.com/github/codeql-action/pull/2912)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.29.0/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.28.19`](https://redirect.github.com/github/codeql-action/releases/tag/v3.28.19)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.18...v3.28.19)
    
    ##### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    ##### 3.28.19 - 03 Jun 2025
    
    - The CodeQL Action no longer includes its own copy of the extractor for
    the `actions` language, which is currently in public preview.
    The `actions` extractor has been included in the CodeQL CLI since
    v2.20.6. If your workflow has enabled the `actions` language *and* you
    have pinned
    your `tools:` property to a specific version of the CodeQL CLI earlier
    than v2.20.6, you will need to update to at least CodeQL v2.20.6 or
    disable
        `actions` analysis.
    - Update default CodeQL bundle version to 2.21.4.
    [#&#8203;2910](https://redirect.github.com/github/codeql-action/pull/2910)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.28.19/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.28.18`](https://redirect.github.com/github/codeql-action/releases/tag/v3.28.18)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.17...v3.28.18)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 3.28.18 - 16 May 2025
    
    - Update default CodeQL bundle version to 2.21.3.
    [#&#8203;2893](https://redirect.github.com/github/codeql-action/pull/2893)
    - Skip validating SARIF produced by CodeQL for improved performance.
    [#&#8203;2894](https://redirect.github.com/github/codeql-action/pull/2894)
    - The number of threads and amount of RAM used by CodeQL can now be set
    via the `CODEQL_THREADS` and `CODEQL_RAM` runner environment variables.
    If set, these environment variables override the `threads` and `ram`
    inputs respectively.
    [#&#8203;2891](https://redirect.github.com/github/codeql-action/pull/2891)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.28.18/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.28.17`](https://redirect.github.com/github/codeql-action/releases/tag/v3.28.17)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.16...v3.28.17)
    
    ##### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    ##### 3.28.17 - 02 May 2025
    
    - Update default CodeQL bundle version to 2.21.2.
    [#&#8203;2872](https://redirect.github.com/github/codeql-action/pull/2872)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.28.17/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.28.16`](https://redirect.github.com/github/codeql-action/releases/tag/v3.28.16)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.15...v3.28.16)
    
    ##### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    ##### 3.28.16 - 23 Apr 2025
    
    - Update default CodeQL bundle version to 2.21.1.
    [#&#8203;2863](https://redirect.github.com/github/codeql-action/pull/2863)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.28.16/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.28.15`](https://redirect.github.com/github/codeql-action/releases/tag/v3.28.15)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.14...v3.28.15)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 3.28.15 - 07 Apr 2025
    
    - Fix bug where the action would fail if it tried to produce a debug
    artifact with more than 65535 files.
    [#&#8203;2842](https://redirect.github.com/github/codeql-action/pull/2842)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.28.15/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.28.14`](https://redirect.github.com/github/codeql-action/releases/tag/v3.28.14)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.13...v3.28.14)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 3.28.14 - 07 Apr 2025
    
    - Update default CodeQL bundle version to 2.21.0.
    [#&#8203;2838](https://redirect.github.com/github/codeql-action/pull/2838)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.28.14/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.28.13`](https://redirect.github.com/github/codeql-action/releases/tag/v3.28.13)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.12...v3.28.13)
    
    ##### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    ##### 3.28.13 - 24 Mar 2025
    
    No user facing changes.
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.28.13/CHANGELOG.md)
    for more information.
    
    ###
    [`v3.28.12`](https://redirect.github.com/github/codeql-action/releases/tag/v3.28.12)
    
    [Compare
    Source](https://redirect.github.com/github/codeql-action/compare/v3.28.11...v3.28.12)
    
    ### CodeQL Action Changelog
    
    See the [releases
    page](https://redirect.github.com/github/codeql-action/releases) for the
    relevant changes to the CodeQL CLI and language packs.
    
    #### 3.28.12 - 19 Mar 2025
    
    - Dependency caching should now cache more dependencies for Java
    `build-mode: none` extractions. This should speed up workflows and avoid
    inconsistent alerts in some cases.
    - Update default CodeQL bundle version to 2.20.7.
    [#&#8203;2810](https://redirect.github.com/github/codeql-action/pull/2810)
    
    See the full
    [CHANGELOG.md](https://redirect.github.com/github/codeql-action/blob/v3.28.12/CHANGELOG.md)
    for more information.
    
    </details>
    
    <details>
    <summary>actions/go-versions (go)</summary>
    
    ###
    [`v1.24.4`](https://redirect.github.com/actions/go-versions/releases/tag/1.24.4-15482447176):
    1.24.4
    
    [Compare
    Source](https://redirect.github.com/actions/go-versions/compare/1.24.3-14875263452...1.24.4-15482447176)
    
    Go 1.24.4
    
    ###
    [`v1.24.3`](https://redirect.github.com/actions/go-versions/releases/tag/1.24.3-14875263452):
    1.24.3
    
    [Compare
    Source](https://redirect.github.com/actions/go-versions/compare/1.24.2-14210955142...1.24.3-14875263452)
    
    Go 1.24.3
    
    ###
    [`v1.24.2`](https://redirect.github.com/actions/go-versions/releases/tag/1.24.2-14210955142):
    1.24.2
    
    [Compare
    Source](https://redirect.github.com/actions/go-versions/compare/1.24.1-13667719799...1.24.2-14210955142)
    
    Go 1.24.2
    
    ###
    [`v1.24.1`](https://redirect.github.com/actions/go-versions/releases/tag/1.24.1-13667719799):
    1.24.1
    
    [Compare
    Source](https://redirect.github.com/actions/go-versions/compare/1.24.0-13277276272...1.24.1-13667719799)
    
    Go 1.24.1
    
    ###
    [`v1.24.0`](https://redirect.github.com/actions/go-versions/releases/tag/1.24.0-13277276272):
    1.24.0
    
    [Compare
    Source](https://redirect.github.com/actions/go-versions/compare/1.23.10-15482449421...1.24.0-13277276272)
    
    Go 1.24.0
    
    </details>
    
    <details>
    <summary>goreleaser/goreleaser-action
    (goreleaser/goreleaser-action)</summary>
    
    ###
    [`v6.3.0`](https://redirect.github.com/goreleaser/goreleaser-action/releases/tag/v6.3.0)
    
    [Compare
    Source](https://redirect.github.com/goreleaser/goreleaser-action/compare/v6.2.1...v6.3.0)
    
    - Bump undici from 5.28.3 to 5.28.5 in
    [https://github.com/goreleaser/goreleaser-action/pull/488](https://redirect.github.com/goreleaser/goreleaser-action/pull/488)
    
    **Full Changelog**:
    https://github.com/goreleaser/goreleaser-action/compare/v6.2.1...v6.3.0
    
    </details>
    
    <details>
    <summary>ossf/scorecard-action (ossf/scorecard-action)</summary>
    
    ###
    [`v2.4.2`](https://redirect.github.com/ossf/scorecard-action/releases/tag/v2.4.2)
    
    [Compare
    Source](https://redirect.github.com/ossf/scorecard-action/compare/v2.4.1...v2.4.2)
    
    #### What's Changed
    
    This update bumps the Scorecard version to the v5.2.1 release. For a
    complete list of changes, please refer to the Scorecard
    [v5.2.0](https://redirect.github.com/ossf/scorecard/releases/tag/v5.2.0)
    and
    [v5.2.1](https://redirect.github.com/ossf/scorecard/releases/tag/v5.2.1)
    release notes.
    
    **Full Changelog**:
    https://github.com/ossf/scorecard-action/compare/v2.4.1...v2.4.2
    
    </details>
    
    <details>
    <summary>sigstore/cosign-installer (sigstore/cosign-installer)</summary>
    
    ###
    [`v3.8.2`](https://redirect.github.com/sigstore/cosign-installer/releases/tag/v3.8.2)
    
    [Compare
    Source](https://redirect.github.com/sigstore/cosign-installer/compare/v3.8.1...v3.8.2)
    
    #### What's Changed
    
    - install cosign v2 from main in
    [https://github.com/sigstore/cosign-installer/pull/186](https://redirect.github.com/sigstore/cosign-installer/pull/186)
    
    **Full Changelog**:
    https://github.com/sigstore/cosign-installer/compare/v3...v3.8.2
    
    </details>
    
    <details>
    <summary>streetsidesoftware/cspell-action
    (streetsidesoftware/cspell-action)</summary>
    
    ###
    [`v7.0.1`](https://redirect.github.com/streetsidesoftware/cspell-action/releases/tag/v7.0.1)
    
    [Compare
    Source](https://redirect.github.com/streetsidesoftware/cspell-action/compare/v7.0.0...v7.0.1)
    
    ##### Updates and Bug Fixes
    
    - Update CSpell version (9.0.2)
    ([#&#8203;2314](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2314))
    ([d51b087](https://redirect.github.com/streetsidesoftware/cspell-action/commit/d51b0875e0a39d684e34d7a1479c59835efd51a1))
    - Update Dictionaries and Dependencies
    ([#&#8203;2308](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2308))
    ([dc9cd08](https://redirect.github.com/streetsidesoftware/cspell-action/commit/dc9cd08ea27609025cda2a0e0999ffa940ff1b94))
    - Update Dictionaries and Dependencies
    ([#&#8203;2312](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2312))
    ([f65dd69](https://redirect.github.com/streetsidesoftware/cspell-action/commit/f65dd6967b2a277400b41b2112ab666f696641bb))
    - update output to include "errors"
    ([#&#8203;2327](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2327))
    ([7e8e40b](https://redirect.github.com/streetsidesoftware/cspell-action/commit/7e8e40b09c5b7ddfca9b4e4f285b3c1222f54ea4))
    - Workflow Bot -- Update ALL Dependencies (main)
    ([#&#8203;2303](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2303))
    ([1158e1f](https://redirect.github.com/streetsidesoftware/cspell-action/commit/1158e1fa6a21a0c6f5983a146b0cf08176720cf7))
    - Workflow Bot -- Update ALL Dependencies (main)
    ([#&#8203;2320](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2320))
    ([337260e](https://redirect.github.com/streetsidesoftware/cspell-action/commit/337260e33baea41d66488a2a64500dda590e40b2))
    - Workflow Bot -- Update ALL Dependencies (main)
    ([#&#8203;2321](https://redirect.github.com/streetsidesoftware/cspell-action/issues/2321))
    ([6387b34](https://redirect.github.com/streetsidesoftware/cspell-action/commit/6387b344b9f82a846f7d9a0e4fce9baad9c112a5))
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MC4zMy42IiwidXBkYXRlZEluVmVyIjoiNDAuNTAuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Signed-off-by: alex boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
