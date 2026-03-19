commit c206e3ee9fda2426ab5f08a826dd2b2e20495c01
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jun 4 14:26:59 2024 +0200

    Update module github.com/prometheus/common to v0.54.0 (#10302)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [github.com/prometheus/common](https://togithub.com/prometheus/common)
    | `v0.53.0` -> `v0.54.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fprometheus%2fcommon/v0.54.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fprometheus%2fcommon/v0.54.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fprometheus%2fcommon/v0.53.0/v0.54.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fprometheus%2fcommon/v0.53.0/v0.54.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v0.54.0`](https://togithub.com/prometheus/common/releases/tag/v0.54.0)
    
    [Compare
    Source](https://togithub.com/prometheus/common/compare/v0.53.0...v0.54.0)
    
    #### What's Changed
    
    - Bump golang.org/x/net from 0.22.0 to 0.23.0 in /sigv4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/624](https://togithub.com/prometheus/common/pull/624)
    - Bump golang.org/x/net from 0.22.0 to 0.23.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/623](https://togithub.com/prometheus/common/pull/623)
    - Add HTTP headers support to common HTTP client. by
    [@&#8203;roidelapluie](https://togithub.com/roidelapluie) in
    [https://github.com/prometheus/common/pull/416](https://togithub.com/prometheus/common/pull/416)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/common/pull/633](https://togithub.com/prometheus/common/pull/633)
    - Bump github.com/aws/aws-sdk-go from 1.51.11 to 1.51.32 in /sigv4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/632](https://togithub.com/prometheus/common/pull/632)
    - Bump golang.org/x/oauth2 from 0.18.0 to 0.19.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/628](https://togithub.com/prometheus/common/pull/628)
    - Bump golang.org/x/net from 0.23.0 to 0.24.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/630](https://togithub.com/prometheus/common/pull/630)
    - Bump github.com/prometheus/client_model from 0.6.0 to 0.6.1 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/631](https://togithub.com/prometheus/common/pull/631)
    - Bump google.golang.org/protobuf from 1.33.0 to 1.34.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/629](https://togithub.com/prometheus/common/pull/629)
    - Use common interface to fetch secrets in HTTP client config by
    [@&#8203;TheSpiritXIII](https://togithub.com/TheSpiritXIII) in
    [https://github.com/prometheus/common/pull/538](https://togithub.com/prometheus/common/pull/538)
    - Add support for secret refs via a secret manager by
    [@&#8203;TheSpiritXIII](https://togithub.com/TheSpiritXIII) in
    [https://github.com/prometheus/common/pull/572](https://togithub.com/prometheus/common/pull/572)
    - oauth2RoundTripper: Avoid race condition and readability changes. by
    [@&#8203;bwplotka](https://togithub.com/bwplotka) in
    [https://github.com/prometheus/common/pull/634](https://togithub.com/prometheus/common/pull/634)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/common/pull/636](https://togithub.com/prometheus/common/pull/636)
    - Bump github.com/aws/aws-sdk-go from 1.51.32 to 1.53.14 in /sigv4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/638](https://togithub.com/prometheus/common/pull/638)
    - Bump github.com/prometheus/client_golang from 1.19.0 to 1.19.1 in
    /sigv4 by [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/639](https://togithub.com/prometheus/common/pull/639)
    - feat: add time template helpers by
    [@&#8203;freak12techno](https://togithub.com/freak12techno) in
    [https://github.com/prometheus/common/pull/627](https://togithub.com/prometheus/common/pull/627)
    
    #### New Contributors
    
    - [@&#8203;bwplotka](https://togithub.com/bwplotka) made their first
    contribution in
    [https://github.com/prometheus/common/pull/634](https://togithub.com/prometheus/common/pull/634)
    - [@&#8203;freak12techno](https://togithub.com/freak12techno) made their
    first contribution in
    [https://github.com/prometheus/common/pull/627](https://togithub.com/prometheus/common/pull/627)
    
    **Full Changelog**:
    https://github.com/prometheus/common/compare/v0.53.0...v0.54.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4zNzcuOCIsInVwZGF0ZWRJblZlciI6IjM3LjM3Ny44IiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
