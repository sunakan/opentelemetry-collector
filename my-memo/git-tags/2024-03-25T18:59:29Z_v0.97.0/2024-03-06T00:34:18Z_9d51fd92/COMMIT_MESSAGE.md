commit 9d51fd929ec855976ddf7c85669d34e53ed01e97
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Mar 5 16:34:18 2024 -0800

    Update module go.opentelemetry.io/build-tools/multimod to v0.13.0 (#9700)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [go.opentelemetry.io/build-tools/multimod](https://togithub.com/open-telemetry/opentelemetry-go-build-tools)
    | `v0.12.0` -> `v0.13.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/go.opentelemetry.io%2fbuild-tools%2fmultimod/v0.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/go.opentelemetry.io%2fbuild-tools%2fmultimod/v0.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/go.opentelemetry.io%2fbuild-tools%2fmultimod/v0.12.0/v0.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/go.opentelemetry.io%2fbuild-tools%2fmultimod/v0.12.0/v0.13.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>open-telemetry/opentelemetry-go-build-tools
    (go.opentelemetry.io/build-tools/multimod)</summary>
    
    ###
    [`v0.13.0`](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/blob/HEAD/CHANGELOG.md#v0130)
    
    [Compare
    Source](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/compare/v0.12.0...v0.13.0)
    
    ##### 🛑 Breaking changes 🛑
    
    - `all`: bump minimal Go version to 1.20
    ([#&#8203;474](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/474))
    
    ##### 💡 Enhancements 💡
    
    - `multimod`: ignore excluded-modules when using sync to update
    dependencies
    ([#&#8203;442](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/442))
    This allows users of the sync command to sync all modules in a monorepo,
    including
    those listed in the excluded-modules. This is useful for repositories
    where some modules
    may not yet be ready for releasing (therefore listed under
    excluded-modules) but their
        dependencies still need to be managed via multimod.
    
    - `crosslink`: Add `--skip` flag to ignore specified go modules
    ([#&#8203;480](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/480))
    
    - `multimod`: add support for `--commit-hash` to allow users to
    overwrite the tag in a versions.yaml file
    ([#&#8203;422](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/422))
    This feature allows users to specify a tag (i.e. main) when they want to
    update
        modules.
    
    - `chloggen`: support a custom changelog summary template
    ([#&#8203;501](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/501))
    The changelog summary template can be customized by configuring a custom
    template with the `summary_template` configuration setting.
    The default template provides a starting point for a custom template:
    https://github.com/open-telemetry/opentelemetry-go-build-tools/blob/v0.13.0/chloggen/internal/chlog/summary.tmpl
    
    ##### 🧰 Bug fixes 🧰
    
    - `crosslink`: Fix Windows produces backslashes instead of slashes
    ([#&#8203;458](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/458))
    This fixes the issue of Windows produces backslashes instead of slashes
    when crosslinking
        dependencies in go.mod files on Windows.
    
    - `dbotconf`: Fix Windows produces backslashes instead of slashes
    ([#&#8203;264](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/264))
    This fixes the issue of Windows produces backslashes instead of slashes
    when generating
        Dependabot configuration files on Windows.
    
    - `multimod`: Fix tagging on Windows
    ([#&#8203;464](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/464))
        This fixes the issue of `multimod tag` failing on Windows.
    
    - `multimod`: Fix to log 'Using versioning file' and 'Successfully
    deleted module tags' to stderr instead of stdout
    ([#&#8203;507](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/507))
    
    - `chloggen`: change generated files permissions from 0755 to 0644
    ([#&#8203;457](https://togithub.com/open-telemetry/opentelemetry-go-build-tools/issues/457))
    
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
    
    This PR has been generated by [Mend
    Renovate](https://www.mend.io/free-developer-tools/renovate/). View
    repository job log
    [here](https://developer.mend.io/github/open-telemetry/opentelemetry-collector).
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4yMjAuMiIsInVwZGF0ZWRJblZlciI6IjM3LjIyNy4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
