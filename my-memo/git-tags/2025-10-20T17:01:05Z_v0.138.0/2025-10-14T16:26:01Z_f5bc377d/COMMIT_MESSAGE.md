commit f5bc377df4acd486be11a4a2496209f4924a5195
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Oct 14 16:26:01 2025 +0000

    Update module github.com/rhysd/actionlint to v1.7.8 (#14012)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [github.com/rhysd/actionlint](https://redirect.github.com/rhysd/actionlint)
    | `v1.7.7` -> `v1.7.8` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2frhysd%2factionlint/v1.7.8?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2frhysd%2factionlint/v1.7.7/v1.7.8?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>rhysd/actionlint (github.com/rhysd/actionlint)</summary>
    
    ###
    [`v1.7.8`](https://redirect.github.com/rhysd/actionlint/blob/HEAD/CHANGELOG.md#v178---2025-10-11)
    
    [Compare
    Source](https://redirect.github.com/rhysd/actionlint/compare/v1.7.7...v1.7.8)
    
    - Support `models` permission in `permissions` section.
    ([#&#8203;531](https://redirect.github.com/rhysd/actionlint/issues/531),
    thanks [@&#8203;muzimuzhi](https://redirect.github.com/muzimuzhi))
    - Support `job.check_run_id` property.
    ([#&#8203;576](https://redirect.github.com/rhysd/actionlint/issues/576),
    thanks [@&#8203;muzimuzhi](https://redirect.github.com/muzimuzhi) for
    fixing the type at
    [#&#8203;577](https://redirect.github.com/rhysd/actionlint/issues/577))
    - Support `node24` runtime at `using` section in action metadata.
    ([#&#8203;561](https://redirect.github.com/rhysd/actionlint/issues/561),
    thanks [@&#8203;salmanmkc](https://redirect.github.com/salmanmkc))
    - Add support for the following runner labels
    - [`macos-26` and
    `macos-26-large`](https://github.blog/changelog/2025-09-11-actions-macos-26-image-now-in-public-preview/)
    ([#&#8203;572](https://redirect.github.com/rhysd/actionlint/issues/572),
    thanks [@&#8203;muzimuzhi](https://redirect.github.com/muzimuzhi))
    -
    [`macos-15`](https://github.blog/changelog/2025-09-19-github-actions-macos-13-runner-image-is-closing-down/#what-you-need-to-do)
    ([#&#8203;572](https://redirect.github.com/rhysd/actionlint/issues/572),
    thanks [@&#8203;muzimuzhi](https://redirect.github.com/muzimuzhi))
    - Drop support for the following runner labels.
    -
    [`ubuntu-20.04`](https://redirect.github.com/actions/runner-images/issues/11101)
    ([#&#8203;534](https://redirect.github.com/rhysd/actionlint/issues/534),
    thanks [@&#8203;shogo82148](https://redirect.github.com/shogo82148))
    -
    [`windows-2019`](https://github.blog/changelog/2025-04-15-upcoming-breaking-changes-and-releases-for-github-actions/#windows-server-2019-is-closing-down)
    ([#&#8203;572](https://redirect.github.com/rhysd/actionlint/issues/572),
    thanks [@&#8203;muzimuzhi](https://redirect.github.com/muzimuzhi))
    - Support
    [`deprecationMessage`](https://docs.github.com/en/actions/reference/workflows-and-actions/metadata-syntax#inputsinput_iddeprecationmessage)
    in action inputs.
    ([#&#8203;540](https://redirect.github.com/rhysd/actionlint/issues/540),
    thanks [@&#8203;saansh45](https://redirect.github.com/saansh45))
    - Support [`windows-11-arm`
    runner](https://github.blog/changelog/2025-04-14-windows-arm64-hosted-runners-now-available-in-public-preview/).
    ([#&#8203;542](https://redirect.github.com/rhysd/actionlint/issues/542),
    thanks [@&#8203;trim21](https://redirect.github.com/trim21))
    - Handle `ubuntu-latest` runner label as `ubuntu-24.04` and
    `macos-latest` runner label as `macos-15`.
    - Report mixing Intel Mac labels and Arm Mac labels as error.
    - Add new types to `issues` and `pull_request_target` webhooks.
    - Update the popular actions data set to the latest and add more actions
    to it (thanks [@&#8203;sethvargo](https://redirect.github.com/sethvargo)
    for fixing the `go generate` scripts)
      - `actions/create-github-app-token`
      - `actions/attest-sbom`
      - `actions/ai-inference`
      - `peter-evans/create-or-update-comment`
      - `release-drafter/release-drafter`
      - `SamKirkland/FTP-Deploy-Action`
    - Fix the version value in `actionlint -version` can be empty.
    - Fix outdated URL links in some error messages and documents.
    - [Homebrew formula in this
    repository](https://redirect.github.com/rhysd/actionlint/blob/main/HomebrewFormula/actionlint.rb)
    is deprecated and [Homebrew
    cask](https://redirect.github.com/rhysd/actionlint/blob/main/Casks/actionlint.rb)
    is newly added instead because [GoReleaser no longer supports Homebrew
    formula update](https://goreleaser.com/deprecations/#brews). Note that
    Homebrew's official `actionlint` formula is still maintained. Please
    read the
    [documentation](https://redirect.github.com/rhysd/actionlint/blob/main/docs/install.md#homebrew)
    for more details.
    - Drop support for Go 1.23 and earlier because they are no longer
    maintained officially. Go 1.24 and later are supported to build
    actionlint.
    - Replace [`go-yaml/yaml@v3`](https://redirect.github.com/go-yaml/yaml)
    package with
    [`yaml/go-yaml@v4`](https://redirect.github.com/yaml/go-yaml) package.
    `go-yaml/yaml` was used for parsing workflow files however it was
    unmaintained. `yaml/go-yaml` is a successor of the library officially
    maintained by YAML organization.
    ([#&#8203;575](https://redirect.github.com/rhysd/actionlint/issues/575))
    - Improve error messages on parsing workflow and action metadata files.
    
    \[Changes]\[v1.7.8]
    
    <a id="v1.7.7"></a>
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "on tuesday" (UTC), Automerge - At any
    time (no schedule defined).
    
    🚦 **Automerge**: Disabled by config. Please merge this manually once you
    are satisfied.
    
    ♻ **Rebasing**: Whenever PR becomes conflicted, or you tick the
    rebase/retry checkbox.
    
    🔕 **Ignore**: Close this PR and you won't be reminded about this update
    again.
    
    ---
    
    - [ ] <!-- rebase-check -->If you want to rebase/retry this PR, check
    this box
    
    ---
    
    This PR was generated by [Mend Renovate](https://mend.io/renovate/).
    View the [repository job
    log](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS4xNDMuMSIsInVwZGF0ZWRJblZlciI6IjQxLjE0My4xIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
