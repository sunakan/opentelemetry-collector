commit aaf092a7aa6d37cbb8cb92e6566c2a3784c3551a
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jul 2 16:07:34 2024 +0200

    Update module github.com/prometheus/common to v0.55.0 (#10504)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [github.com/prometheus/common](https://togithub.com/prometheus/common)
    | `v0.54.0` -> `v0.55.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fprometheus%2fcommon/v0.55.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fprometheus%2fcommon/v0.55.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fprometheus%2fcommon/v0.54.0/v0.55.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fprometheus%2fcommon/v0.54.0/v0.55.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v0.55.0`](https://togithub.com/prometheus/common/releases/tag/v0.55.0)
    
    [Compare
    Source](https://togithub.com/prometheus/common/compare/v0.54.0...v0.55.0)
    
    ##### What's Changed
    
    - Update Go modules by [@&#8203;SuperQ](https://togithub.com/SuperQ) in
    [https://github.com/prometheus/common/pull/643](https://togithub.com/prometheus/common/pull/643)
    - enable errcheck linter by
    [@&#8203;mmorel-35](https://togithub.com/mmorel-35) in
    [https://github.com/prometheus/common/pull/637](https://togithub.com/prometheus/common/pull/637)
    - Add a `RELEASE.md` and add
    [@&#8203;gotjosh](https://togithub.com/gotjosh) as a mantainer by
    [@&#8203;gotjosh](https://togithub.com/gotjosh) in
    [https://github.com/prometheus/common/pull/644](https://togithub.com/prometheus/common/pull/644)
    - Move goautoneg to external dependency by
    [@&#8203;mikelolasagasti](https://togithub.com/mikelolasagasti) in
    [https://github.com/prometheus/common/pull/625](https://togithub.com/prometheus/common/pull/625)
    - Expose secret as SecretReader and InlineSecret from config package by
    [@&#8203;pracucci](https://togithub.com/pracucci) in
    [https://github.com/prometheus/common/pull/650](https://togithub.com/prometheus/common/pull/650)
    - Fix HTTPClientConfig JSON marshalling by
    [@&#8203;pracucci](https://togithub.com/pracucci) in
    [https://github.com/prometheus/common/pull/651](https://togithub.com/prometheus/common/pull/651)
    - Expose secret as FileSecret from config package by
    [@&#8203;alanprot](https://togithub.com/alanprot) in
    [https://github.com/prometheus/common/pull/653](https://togithub.com/prometheus/common/pull/653)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/common/pull/646](https://togithub.com/prometheus/common/pull/646)
    - Set http_headers to be omit empty by
    [@&#8203;yeya24](https://togithub.com/yeya24) in
    [https://github.com/prometheus/common/pull/655](https://togithub.com/prometheus/common/pull/655)
    - chore: add HumanizeTimestamp; make ConvertToFloat exportable by
    [@&#8203;freak12techno](https://togithub.com/freak12techno) in
    [https://github.com/prometheus/common/pull/654](https://togithub.com/prometheus/common/pull/654)
    - Bump github.com/aws/aws-sdk-go from 1.53.14 to 1.54.7 in /sigv4 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/659](https://togithub.com/prometheus/common/pull/659)
    - Bump golang.org/x/oauth2 from 0.20.0 to 0.21.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/656](https://togithub.com/prometheus/common/pull/656)
    - Bump google.golang.org/protobuf from 1.34.1 to 1.34.2 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/658](https://togithub.com/prometheus/common/pull/658)
    - Bump golang.org/x/net from 0.25.0 to 0.26.0 by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/prometheus/common/pull/657](https://togithub.com/prometheus/common/pull/657)
    - Synchronize common files from prometheus/prometheus by
    [@&#8203;prombot](https://togithub.com/prombot) in
    [https://github.com/prometheus/common/pull/660](https://togithub.com/prometheus/common/pull/660)
    - Add SigV4 FIPS STS endpoint config by
    [@&#8203;rajagopalanand](https://togithub.com/rajagopalanand) in
    [https://github.com/prometheus/common/pull/649](https://togithub.com/prometheus/common/pull/649)
    
    ##### New Contributors
    
    - [@&#8203;gotjosh](https://togithub.com/gotjosh) made their first
    contribution in
    [https://github.com/prometheus/common/pull/644](https://togithub.com/prometheus/common/pull/644)
    - [@&#8203;mikelolasagasti](https://togithub.com/mikelolasagasti) made
    their first contribution in
    [https://github.com/prometheus/common/pull/625](https://togithub.com/prometheus/common/pull/625)
    - [@&#8203;alanprot](https://togithub.com/alanprot) made their first
    contribution in
    [https://github.com/prometheus/common/pull/653](https://togithub.com/prometheus/common/pull/653)
    - [@&#8203;yeya24](https://togithub.com/yeya24) made their first
    contribution in
    [https://github.com/prometheus/common/pull/655](https://togithub.com/prometheus/common/pull/655)
    - [@&#8203;rajagopalanand](https://togithub.com/rajagopalanand) made
    their first contribution in
    [https://github.com/prometheus/common/pull/649](https://togithub.com/prometheus/common/pull/649)
    
    **Full Changelog**:
    https://github.com/prometheus/common/compare/v0.54.0...v0.55.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy40MjEuMCIsInVwZGF0ZWRJblZlciI6IjM3LjQyMS45IiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
