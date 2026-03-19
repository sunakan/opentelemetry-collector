commit 04503de339f7d3fcfcff6b88596bc7aacf3f1f6e
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Nov 25 09:58:55 2025 -0800

    chore(deps): update module github.com/rhysd/actionlint to v1.7.9 (#14206)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    |
    [github.com/rhysd/actionlint](https://redirect.github.com/rhysd/actionlint)
    | `v1.7.8` -> `v1.7.9` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2frhysd%2factionlint/v1.7.9?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2frhysd%2factionlint/v1.7.8/v1.7.9?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.7.9`](https://redirect.github.com/rhysd/actionlint/blob/HEAD/CHANGELOG.md#v179---2025-11-21)
    
    [Compare
    Source](https://redirect.github.com/rhysd/actionlint/compare/v1.7.8...v1.7.9)
    
    - Add support for [`ubuntu-slim`
    runner](https://github.blog/changelog/2025-10-28-1-vcpu-linux-runner-now-available-in-github-actions-in-public-preview/)
    label.
    ([#&#8203;585](https://redirect.github.com/rhysd/actionlint/issues/585),
    thanks [@&#8203;cestorer](https://redirect.github.com/cestorer))
    - Check input deprecation in action by checking [`deprecationMessage`
    property](https://docs.github.com/en/actions/reference/workflows-and-actions/metadata-syntax#inputsinput_iddeprecationmessage).
    Using a deprecated input is reported as error if it is not marked as
    `required`. See [the
    document](https://redirect.github.com/rhysd/actionlint/blob/main/docs/checks.md#deprecated-inputs-usage)
    for more details.
    ([#&#8203;580](https://redirect.github.com/rhysd/actionlint/issues/580))
      ```yaml
      - uses: reviewdog/action-actionlint@v1
        with:
          # ERROR: Using a deprecated input
          fail_on_error: true
      ```
    - Add support for the [Custom
    images](https://docs.github.com/en/actions/how-tos/manage-runners/larger-runners/use-custom-images)
    feature.
    - Support [`image_version` workflow
    trigger](https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows#image_version).
        ```yaml
        on:
          image_version:
            names:
              - "MyNewImage"
              - "MyOtherImage"
            versions:
              - 1.*
              - 2.*
        ```
    - Support [`jobs.<job_id>.snapshot`
    syntax](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#jobsjob_idsnapshot).
    To make actionlint recognize your own image generation runner, use
    [`self-hosted-runner.labels`
    config](https://redirect.github.com/rhysd/actionlint/blob/main/docs/config.md).
        ```yaml
        jobs:
          build:
            runs-on: my-image-generation-runner
            snapshot:
                image-name: my-custom-image
                version: 2.*
        ```
    - Fix some invalid permissions are not reported as error in `id-token`
    and `models` scopes.
    ([#&#8203;582](https://redirect.github.com/rhysd/actionlint/issues/582),
    thanks [@&#8203;holtkampjs](https://redirect.github.com/holtkampjs))
    - Fix `args` and `entrypoint` inputs are not recognized at `uses:` when
    it's not a Docker action.
    ([#&#8203;550](https://redirect.github.com/rhysd/actionlint/issues/550))
    - Set correct column in source position of YAML parse error.
    - Fix `credentials` cannot be configured with `${{ }}`.
    ([#&#8203;590](https://redirect.github.com/rhysd/actionlint/issues/590))
    - Improve messages in syntax errors on parsing steps (`run:` and
    `uses:`). Available keys suggestion is now more accurate and unexpected
    keys are detected more accurately.
    - Fix the order of errors can be non-deterministic when multiple errors
    are caused at the same source positions.
    - Improve error messages showing suggestions on detecting invalid
    permissions.
    - Add instruction for installing actionlint with [mise package
    manager](https://mise.jdx.dev/getting-started.html).
    ([#&#8203;589](https://redirect.github.com/rhysd/actionlint/issues/589),
    thanks [@&#8203;jylenhof](https://redirect.github.com/jylenhof))
    - Fix outdated URLs in the document.
    - Add new `actionlint.AllContexts` map constant in Go API that contains
    the information about all context availability.
    - Update popular actions data set to the latest with several major
    versions of actions and the following new actions.
      - `anthropics/claude-code-action`
      - `openai/codex-action`
      - `google-github-actions/run-gemini-cli`
    - Add `make cov` task to easily generate a code coverage report.
    - Make installing the formula version of `actionlint` pacakge from tap
    of this repository with Homebrew a hard error. Install the cask version
    instead following the instruction in the error message.
    
    \[Changes]\[v1.7.9]
    
    <a id="v1.7.8"></a>
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi4xOS41IiwidXBkYXRlZEluVmVyIjoiNDIuMTkuNSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
