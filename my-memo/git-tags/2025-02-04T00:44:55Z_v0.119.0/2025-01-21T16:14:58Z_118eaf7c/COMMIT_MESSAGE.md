commit 118eaf7c3abee9c76c0d5045bbbf19ffa02e2abd
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 21 16:14:58 2025 +0000

    Update module github.com/prometheus/common to v0.62.0 (#12140)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/prometheus/common](https://redirect.github.com/prometheus/common)
    | `v0.61.0` -> `v0.62.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fprometheus%2fcommon/v0.62.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fprometheus%2fcommon/v0.62.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fprometheus%2fcommon/v0.61.0/v0.62.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fprometheus%2fcommon/v0.61.0/v0.62.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>prometheus/common (github.com/prometheus/common)</summary>
    
    ###
    [`v0.62.0`](https://redirect.github.com/prometheus/common/releases/tag/v0.62.0)
    
    [Compare
    Source](https://redirect.github.com/prometheus/common/compare/v0.61.0...v0.62.0)
    
    ⚠️ This releases switches internal global to `UTF8Validation` from
    `LegacyValidation`. This is a breaking change, relaxing the validation.
    We don't intend to add more schemas and we have to have a global for
    unmarshalling interfaces, thus the change was made ⚠️
    
    #### What's Changed
    
    - Change default validation scheme to UTF8Validation by
    [@&#8203;ywwg](https://redirect.github.com/ywwg) in
    [https://github.com/prometheus/common/pull/724](https://redirect.github.com/prometheus/common/pull/724)
    - Remove deprecated promlog package by
    [@&#8203;SuperQ](https://redirect.github.com/SuperQ) in
    [https://github.com/prometheus/common/pull/738](https://redirect.github.com/prometheus/common/pull/738)
    - Remove deprecated sigv4 module by
    [@&#8203;SuperQ](https://redirect.github.com/SuperQ) in
    [https://github.com/prometheus/common/pull/737](https://redirect.github.com/prometheus/common/pull/737)
    - update links to openmetrics to reference the v1.0.0 release by
    [@&#8203;dashpole](https://redirect.github.com/dashpole) in
    [https://github.com/prometheus/common/pull/740](https://redirect.github.com/prometheus/common/pull/740)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://redirect.github.com/prombot) in
    [https://github.com/prometheus/common/pull/742](https://redirect.github.com/prometheus/common/pull/742)
    - Bump google.golang.org/protobuf from 1.35.2 to 1.36.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/prometheus/common/pull/744](https://redirect.github.com/prometheus/common/pull/744)
    - Bump golang.org/x/net from 0.32.0 to 0.33.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/prometheus/common/pull/743](https://redirect.github.com/prometheus/common/pull/743)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://redirect.github.com/prombot) in
    [https://github.com/prometheus/common/pull/747](https://redirect.github.com/prometheus/common/pull/747)
    - http_config: Allow customizing TLS config and settings. by
    [@&#8203;bwplotka](https://redirect.github.com/bwplotka) in
    [https://github.com/prometheus/common/pull/748](https://redirect.github.com/prometheus/common/pull/748)
    
    #### New Contributors
    
    - [@&#8203;dashpole](https://redirect.github.com/dashpole) made their
    first contribution in
    [https://github.com/prometheus/common/pull/740](https://redirect.github.com/prometheus/common/pull/740)
    
    **Full Changelog**:
    https://github.com/prometheus/common/compare/v0.61.0...v0.62.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4xMDcuMCIsInVwZGF0ZWRJblZlciI6IjM5LjEwNy4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
