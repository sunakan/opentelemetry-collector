commit e75f55657cecd3b0d991e5c5437728424714aef5
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Fri Oct 31 22:22:07 2025 +0000

    chore(deps): update all go.opentelemetry.io/build-tools packages to v0.29.0 (#13881)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [go.opentelemetry.io/build-tools/checkapi](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools)
    | `v0.26.2` -> `v0.29.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fbuild-tools%2fcheckapi/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fbuild-tools%2fcheckapi/v0.26.2/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/build-tools/checkfile](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools)
    | `v0.26.2` -> `v0.29.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fbuild-tools%2fcheckfile/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fbuild-tools%2fcheckfile/v0.26.2/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/build-tools/chloggen](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools)
    | `v0.26.2` -> `v0.29.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fbuild-tools%2fchloggen/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fbuild-tools%2fchloggen/v0.26.2/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/build-tools/crosslink](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools)
    | `v0.26.2` -> `v0.29.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fbuild-tools%2fcrosslink/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fbuild-tools%2fcrosslink/v0.26.2/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/build-tools/githubgen](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools)
    | `v0.26.2` -> `v0.29.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fbuild-tools%2fgithubgen/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fbuild-tools%2fgithubgen/v0.26.2/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    |
    [go.opentelemetry.io/build-tools/multimod](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools)
    | `v0.26.2` -> `v0.29.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fbuild-tools%2fmultimod/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fbuild-tools%2fmultimod/v0.26.2/v0.29.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go-build-tools
    (go.opentelemetry.io/build-tools/checkapi)</summary>
    
    ###
    [`v0.29.0`](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/blob/HEAD/CHANGELOG.md#v0290)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/compare/v0.28.1...v0.29.0)
    
    ##### 💡 Enhancements 💡
    
    - `checkapi`: Validate the functions exported by a component
    ([#&#8203;1358](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1358))
      Set explicitly what functions a component can export.
    Set name to "\*" to allow any function to be exported under a class of
    component.
    Set name to "" or missing to not allow any functions to be exported
    under a class of component.
    
    - `issuegenerator`: Add PR number to issue comments
    ([#&#8203;1180](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1180))
    
    ##### 🧰 Bug fixes 🧰
    
    - `checkapi`: Do not report errors about a missing factory function if
    the component is not expected to have a factory function
    ([#&#8203;1283](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1283))
    - `checkapi`: Fix collision of struct names inside a module
    ([#&#8203;1357](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1357))
    - `checkapi`: do not read the API of go modules that are not associated
    with a metadata.yaml file.
    ([#&#8203;1356](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1356))
    - `checkapi`: do not try to read the API of a nested module folder
    ([#&#8203;1355](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1355))
    
    ###
    [`v0.28.1`](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/blob/HEAD/CHANGELOG.md#v0281)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/compare/v0.28.0...v0.28.1)
    
    ##### 💡 Enhancements 💡
    
    - `checkapi`: Work with a JSON schema stored as yaml under metadata.yaml
    config key.
    ([#&#8203;1148](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1148))
    - `chloggen`: Sort changelog entries lexicographically based on their
    component field
    ([#&#8203;1276](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1276))
    - `issuegenerator`: issuegenerator now pings the author of a failing
    test's PR
    ([#&#8203;1182](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1182))
    - `issuegenerator`: trim component type suffix from component names
    ([#&#8203;1255](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1255))
    
    ##### 🧰 Bug fixes 🧰
    
    - `issuegenerator`: removed pr section from autogenerated issue body.
    ([#&#8203;1243](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1243))
    
    ###
    [`v0.28.0`](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/blob/HEAD/CHANGELOG.md#v0280)
    
    [Compare
    Source](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/compare/v0.26.2...v0.28.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `all`: Bump minimum Go version to 1.24
    ([#&#8203;1145](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1145),
    [#&#8203;1159](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1159))
    
    ##### 💡 Enhancements 💡
    
    - `issuegenerator`: added component section in auto generated issue body
    ([#&#8203;42518](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/42518))
      Related issue is in the `opentelemetry-collector-contrib` repository.
    - `checkapi`: Add the folder name to error messages
    ([#&#8203;1141](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1141))
    - `issuegenerator`: Include commit and pr in issues generated by
    issuegenerator
    ([#&#8203;1180](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1180))
    - `issue generator`: Use labels to search for existing issues in issue
    generator
    ([#&#8203;1181](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1181))
    
    ##### 🧰 Bug fixes 🧰
    
    - `multimod`: Support `vN` directories when tagging
    ([#&#8203;1209](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1209))
    When tagging a `vN` version of a Go module the `vN` suffix should not be
    included in the tag before the version.
    - `checkapi`: Do not check internal structs for unkeyed literal
    initialization.
    ([#&#8203;1140](https://redirect.github.com/open-telemetry/opentelemetry-go-build-tools/issues/1140))
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about these
    updates again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS45Ny4xMCIsInVwZGF0ZWRJblZlciI6IjQxLjE1OS40IiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
