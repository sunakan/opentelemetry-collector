commit 40874338ce38dd02df09b1d38550e0fddc77c58e
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 30 09:05:11 2024 -0800

    Update module github.com/klauspost/compress to v1.17.5 (#9419)
    
    [![Mend
    Renovate](https://app.renovatebot.com/images/banner.svg)](https://renovatebot.com)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/klauspost/compress](https://togithub.com/klauspost/compress)
    | `v1.17.4` -> `v1.17.5` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fklauspost%2fcompress/v1.17.5?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fklauspost%2fcompress/v1.17.5?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fklauspost%2fcompress/v1.17.4/v1.17.5?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fklauspost%2fcompress/v1.17.4/v1.17.5?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>klauspost/compress (github.com/klauspost/compress)</summary>
    
    ###
    [`v1.17.5`](https://togithub.com/klauspost/compress/releases/tag/v1.17.5)
    
    [Compare
    Source](https://togithub.com/klauspost/compress/compare/v1.17.4...v1.17.5)
    
    #### What's Changed
    
    - flate: Fix reset with dictionary on custom window encodes by
    [@&#8203;klauspost](https://togithub.com/klauspost) in
    [https://github.com/klauspost/compress/pull/912](https://togithub.com/klauspost/compress/pull/912)
    - zstd: Limit better/best default window to 8MB by
    [@&#8203;klauspost](https://togithub.com/klauspost) in
    [https://github.com/klauspost/compress/pull/913](https://togithub.com/klauspost/compress/pull/913)
    - zstd: Shorter and faster asm for decSymbol.newState by
    [@&#8203;greatroar](https://togithub.com/greatroar) in
    [https://github.com/klauspost/compress/pull/896](https://togithub.com/klauspost/compress/pull/896)
    - zstd: Add Frame header encoding and stripping by
    [@&#8203;klauspost](https://togithub.com/klauspost) in
    [https://github.com/klauspost/compress/pull/908](https://togithub.com/klauspost/compress/pull/908)
    - zstd: Tweak noasm FSE decoder by
    [@&#8203;greatroar](https://togithub.com/greatroar) in
    [https://github.com/klauspost/compress/pull/910](https://togithub.com/klauspost/compress/pull/910)
    - s2: Fix callbacks for skippable blocks and disallow 0xfe (Padding) for
    custom use by [@&#8203;Jille](https://togithub.com/Jille) in
    [https://github.com/klauspost/compress/pull/916](https://togithub.com/klauspost/compress/pull/916)
    - s2: Fix incorrect length encoded by writer.AddSkippableBlock by
    [@&#8203;Jille](https://togithub.com/Jille) in
    [https://github.com/klauspost/compress/pull/917](https://togithub.com/klauspost/compress/pull/917)
    - s2: Fix up AddSkippableBlock more by
    [@&#8203;klauspost](https://togithub.com/klauspost) in
    [https://github.com/klauspost/compress/pull/919](https://togithub.com/klauspost/compress/pull/919)
    - s2: Document and test how to peek the stream for skippable blocks by
    [@&#8203;Jille](https://togithub.com/Jille) in
    [https://github.com/klauspost/compress/pull/918](https://togithub.com/klauspost/compress/pull/918)
    - internal/race,s2: add some race instrumentation by
    [@&#8203;egonelbre](https://togithub.com/egonelbre) in
    [https://github.com/klauspost/compress/pull/903](https://togithub.com/klauspost/compress/pull/903)
    - build(deps): bump the github-actions group with 4 updates by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/klauspost/compress/pull/900](https://togithub.com/klauspost/compress/pull/900)
    - CI: Hash pin sensitive actions and configure Dependabot to
    automatically update them by
    [@&#8203;diogoteles08](https://togithub.com/diogoteles08) in
    [https://github.com/klauspost/compress/pull/899](https://togithub.com/klauspost/compress/pull/899)
    - Update generator and executable go.mod by
    [@&#8203;klauspost](https://togithub.com/klauspost) in
    [https://github.com/klauspost/compress/pull/904](https://togithub.com/klauspost/compress/pull/904)
    - Update README.md by [@&#8203;pelenium](https://togithub.com/pelenium)
    in
    [https://github.com/klauspost/compress/pull/905](https://togithub.com/klauspost/compress/pull/905)
    - build(deps): bump the github-actions group with 1 update by
    [@&#8203;dependabot](https://togithub.com/dependabot) in
    [https://github.com/klauspost/compress/pull/906](https://togithub.com/klauspost/compress/pull/906)
    
    #### New Contributors
    
    - [@&#8203;pelenium](https://togithub.com/pelenium) made their first
    contribution in
    [https://github.com/klauspost/compress/pull/905](https://togithub.com/klauspost/compress/pull/905)
    - [@&#8203;Jille](https://togithub.com/Jille) made their first
    contribution in
    [https://github.com/klauspost/compress/pull/916](https://togithub.com/klauspost/compress/pull/916)
    
    **Full Changelog**:
    https://github.com/klauspost/compress/compare/v1.17.4...v1.17.5
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzNy4xNTMuMiIsInVwZGF0ZWRJblZlciI6IjM3LjE1My4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiJ9-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
