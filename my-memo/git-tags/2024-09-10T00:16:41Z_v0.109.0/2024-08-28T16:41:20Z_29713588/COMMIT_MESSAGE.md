commit 297135886b88c7372a650227d99ab99410c2c4bb
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Wed Aug 28 09:41:20 2024 -0700

    fix(deps): update module github.com/prometheus/common to v0.56.0 (#10992)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [github.com/prometheus/common](https://togithub.com/prometheus/common)
    | `v0.55.0` -> `v0.56.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fprometheus%2fcommon/v0.56.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fprometheus%2fcommon/v0.56.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fprometheus%2fcommon/v0.55.0/v0.56.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fprometheus%2fcommon/v0.55.0/v0.56.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v0.56.0`](https://togithub.com/prometheus/common/releases/tag/v0.56.0)
    
    [Compare
    Source](https://togithub.com/prometheus/common/compare/v0.55.0...v0.56.0)
    
    #### What's Changed
    
    - Don't always fetch a OAuth2 token, if the secret from a file didn't
    change by [@&#8203;multani](https://togithub.com/multani) in
    [https://github.com/prometheus/common/pull/647](https://togithub.com/prometheus/common/pull/647)
    - remove dependency to github.com/prometheus/client_golang by
    [@&#8203;ilius](https://togithub.com/ilius) in
    [https://github.com/prometheus/common/pull/662](https://togithub.com/prometheus/common/pull/662)
    - Bump github.com/aws/aws-sdk-go from 1.54.7 to 1.54.11 in /sigv4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/661](https://togithub.com/prometheus/common/pull/661)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/common/pull/664](https://togithub.com/prometheus/common/pull/664)
    - Revert
    [#&#8203;576](https://togithub.com/prometheus/common/issues/576) and add
    deprecation notice by [@&#8203;SuperQ](https://togithub.com/SuperQ) in
    [https://github.com/prometheus/common/pull/665](https://togithub.com/prometheus/common/pull/665)
    - Bump golang.org/x/net from 0.26.0 to 0.27.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/667](https://togithub.com/prometheus/common/pull/667)
    - use basic string in IsValidLegacyMetricName by
    [@&#8203;ywwg](https://togithub.com/ywwg) in
    [https://github.com/prometheus/common/pull/668](https://togithub.com/prometheus/common/pull/668)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/common/pull/672](https://togithub.com/prometheus/common/pull/672)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/common/pull/674](https://togithub.com/prometheus/common/pull/674)
    - Bump github.com/aws/aws-sdk-go from 1.54.19 to 1.55.5 in /sigv4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/671](https://togithub.com/prometheus/common/pull/671)
    - sigv4: support nil body by
    [@&#8203;roidelapluie](https://togithub.com/roidelapluie) in
    [https://github.com/prometheus/common/pull/673](https://togithub.com/prometheus/common/pull/673)
    - Fix overflows of untyped int constants on 32-bit by
    [@&#8203;dswarbrick](https://togithub.com/dswarbrick) in
    [https://github.com/prometheus/common/pull/675](https://togithub.com/prometheus/common/pull/675)
    - Update client_golang by [@&#8203;SuperQ](https://togithub.com/SuperQ)
    in
    [https://github.com/prometheus/common/pull/676](https://togithub.com/prometheus/common/pull/676)
    - Update golangci lint by
    [@&#8203;roidelapluie](https://togithub.com/roidelapluie) in
    [https://github.com/prometheus/common/pull/679](https://togithub.com/prometheus/common/pull/679)
    - expfmt: Add UTF-8 syntax support in text_parse.go by
    [@&#8203;fedetorres93](https://togithub.com/fedetorres93) in
    [https://github.com/prometheus/common/pull/670](https://togithub.com/prometheus/common/pull/670)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/common/pull/681](https://togithub.com/prometheus/common/pull/681)
    - fix(utf8): provide a method for explicitly checking label names for
    legacy validity by [@&#8203;ywwg](https://togithub.com/ywwg) in
    [https://github.com/prometheus/common/pull/682](https://togithub.com/prometheus/common/pull/682)
    
    #### New Contributors
    
    - [@&#8203;multani](https://togithub.com/multani) made their first
    contribution in
    [https://github.com/prometheus/common/pull/647](https://togithub.com/prometheus/common/pull/647)
    - [@&#8203;ilius](https://togithub.com/ilius) made their first
    contribution in
    [https://github.com/prometheus/common/pull/662](https://togithub.com/prometheus/common/pull/662)
    - [@&#8203;dswarbrick](https://togithub.com/dswarbrick) made their first
    contribution in
    [https://github.com/prometheus/common/pull/675](https://togithub.com/prometheus/common/pull/675)
    - [@&#8203;fedetorres93](https://togithub.com/fedetorres93) made their
    first contribution in
    [https://github.com/prometheus/common/pull/670](https://togithub.com/prometheus/common/pull/670)
    
    **Full Changelog**:
    https://github.com/prometheus/common/compare/v0.55.0...v0.56.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOC4yNi4xIiwidXBkYXRlZEluVmVyIjoiMzguNTYuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
