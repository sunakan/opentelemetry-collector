commit 5c2fc22fa227385d78e0367eefdaf2c363daa703
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 6 10:03:59 2024 -0800

    Update module github.com/knadh/koanf/v2 to v2.0.2 (#9469)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [github.com/knadh/koanf/v2](https://togithub.com/knadh/koanf) |
    `v2.0.1` -> `v2.0.2` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fknadh%2fkoanf%2fv2/v2.0.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fknadh%2fkoanf%2fv2/v2.0.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fknadh%2fkoanf%2fv2/v2.0.1/v2.0.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fknadh%2fkoanf%2fv2/v2.0.1/v2.0.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>knadh/koanf (github.com/knadh/koanf/v2)</summary>
    
    ### [`v2.0.2`](https://togithub.com/knadh/koanf/releases/tag/v2.0.2)
    
    [Compare
    Source](https://togithub.com/knadh/koanf/compare/v2.0.1...v2.0.2)
    
    #### What's Changed
    
    - feat: add nats provider by
    [@&#8203;TECHNOFAB11](https://togithub.com/TECHNOFAB11) in
    [https://github.com/knadh/koanf/pull/213](https://togithub.com/knadh/koanf/pull/213)
    - feat: add flag to optionally fetch secret metadata by
    [@&#8203;Thunderbottom](https://togithub.com/Thunderbottom) in
    [https://github.com/knadh/koanf/pull/219](https://togithub.com/knadh/koanf/pull/219)
    - chore: change WithMeta to ExcludeMeta for backwards compatibility by
    [@&#8203;Thunderbottom](https://togithub.com/Thunderbottom) in
    [https://github.com/knadh/koanf/pull/220](https://togithub.com/knadh/koanf/pull/220)
    - typos and little clearer code by
    [@&#8203;GreyXor](https://togithub.com/GreyXor) in
    [https://github.com/knadh/koanf/pull/222](https://togithub.com/knadh/koanf/pull/222)
    - Fixed a nil panic issue in vault provider by
    [@&#8203;wangkang](https://togithub.com/wangkang) in
    [https://github.com/knadh/koanf/pull/224](https://togithub.com/knadh/koanf/pull/224)
    - Not use deprecated io/ioutil by
    [@&#8203;tchssk](https://togithub.com/tchssk) in
    [https://github.com/knadh/koanf/pull/226](https://togithub.com/knadh/koanf/pull/226)
    - Proposal: support Vault auth method by
    [@&#8203;missedone](https://togithub.com/missedone) in
    [https://github.com/knadh/koanf/pull/229](https://togithub.com/knadh/koanf/pull/229)
    - Add parameterstore provider by
    [@&#8203;tchssk](https://togithub.com/tchssk) in
    [https://github.com/knadh/koanf/pull/227](https://togithub.com/knadh/koanf/pull/227)
    - feat: optional support net/http transport by
    [@&#8203;missedone](https://togithub.com/missedone) in
    [https://github.com/knadh/koanf/pull/232](https://togithub.com/knadh/koanf/pull/232)
    - breaking change:
    [#&#8203;233](https://togithub.com/knadh/koanf/issues/233) return error
    struct to avoid panic at runtime by
    [@&#8203;missedone](https://togithub.com/missedone) in
    [https://github.com/knadh/koanf/pull/234](https://togithub.com/knadh/koanf/pull/234)
    - Bump github.com/nats-io/nkeys from 0.4.4 to 0.4.6 in /providers/nats
    by [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/knadh/koanf/pull/246](https://togithub.com/knadh/koanf/pull/246)
    - Bump golang.org/x/net from 0.7.0 to 0.17.0 in /providers/etcd by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/knadh/koanf/pull/248](https://togithub.com/knadh/koanf/pull/248)
    - Bump golang.org/x/net from 0.7.0 to 0.17.0 in /providers/vault by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/knadh/koanf/pull/247](https://togithub.com/knadh/koanf/pull/247)
    - Bump github.com/nats-io/nats-server/v2 from 2.9.15 to 2.9.23 in
    /providers/nats by [@&#8203;dependabot](https://togithub.com/dependabot)
    in
    [https://github.com/knadh/koanf/pull/241](https://togithub.com/knadh/koanf/pull/241)
    - Bump google.golang.org/grpc from 1.53.0 to 1.56.3 in /providers/etcd
    by [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/knadh/koanf/pull/243](https://togithub.com/knadh/koanf/pull/243)
    - fix: typo by [@&#8203;testwill](https://togithub.com/testwill) in
    [https://github.com/knadh/koanf/pull/251](https://togithub.com/knadh/koanf/pull/251)
    - Bump golang.org/x/crypto from 0.14.0 to 0.17.0 in /providers/vault by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/knadh/koanf/pull/261](https://togithub.com/knadh/koanf/pull/261)
    - Bump golang.org/x/crypto from 0.14.0 to 0.17.0 in /providers/nats by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/knadh/koanf/pull/260](https://togithub.com/knadh/koanf/pull/260)
    - Add optional `Opt{}` param that takes a koanf instance to match
    posflag's default value behaviour in basic flag. Closes
    [#&#8203;255](https://togithub.com/knadh/koanf/issues/255). by
    [@&#8203;knadh](https://togithub.com/knadh) in
    [https://github.com/knadh/koanf/pull/259](https://togithub.com/knadh/koanf/pull/259)
    - Parser: KDL by [@&#8203;dezren39](https://togithub.com/dezren39) in
    [https://github.com/knadh/koanf/pull/266](https://togithub.com/knadh/koanf/pull/266)
    - Parser: KDL kdl-go dependency update by
    [@&#8203;dezren39](https://togithub.com/dezren39) in
    [https://github.com/knadh/koanf/pull/267](https://togithub.com/knadh/koanf/pull/267)
    
    #### New Contributors
    
    - [@&#8203;TECHNOFAB11](https://togithub.com/TECHNOFAB11) made their
    first contribution in
    [https://github.com/knadh/koanf/pull/213](https://togithub.com/knadh/koanf/pull/213)
    - [@&#8203;GreyXor](https://togithub.com/GreyXor) made their first
    contribution in
    [https://github.com/knadh/koanf/pull/222](https://togithub.com/knadh/koanf/pull/222)
    - [@&#8203;wangkang](https://togithub.com/wangkang) made their first
    contribution in
    [https://github.com/knadh/koanf/pull/224](https://togithub.com/knadh/koanf/pull/224)
    - [@&#8203;tchssk](https://togithub.com/tchssk) made their first
    contribution in
    [https://github.com/knadh/koanf/pull/226](https://togithub.com/knadh/koanf/pull/226)
    - [@&#8203;missedone](https://togithub.com/missedone) made their first
    contribution in
    [https://github.com/knadh/koanf/pull/229](https://togithub.com/knadh/koanf/pull/229)
    - [@&#8203;testwill](https://togithub.com/testwill) made their first
    contribution in
    [https://github.com/knadh/koanf/pull/251](https://togithub.com/knadh/koanf/pull/251)
    - [@&#8203;dezren39](https://togithub.com/dezren39) made their first
    contribution in
    [https://github.com/knadh/koanf/pull/266](https://togithub.com/knadh/koanf/pull/266)
    
    **Full Changelog**:
    https://github.com/knadh/koanf/compare/v2.0.1...v2.0.2
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4xNzMuMCIsInVwZGF0ZWRJblZlciI6IjM3LjE3My4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
