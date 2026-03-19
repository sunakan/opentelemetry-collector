commit 301144b12ec7f95bfe6ff6c54c6a9969deb40cb3
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Feb 25 05:25:29 2025 +0000

    Update module github.com/klauspost/compress to v1.18.0 (#12472)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/klauspost/compress](https://redirect.github.com/klauspost/compress)
    | `v1.17.11` -> `v1.18.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fklauspost%2fcompress/v1.18.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fklauspost%2fcompress/v1.18.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fklauspost%2fcompress/v1.17.11/v1.18.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fklauspost%2fcompress/v1.17.11/v1.18.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>klauspost/compress (github.com/klauspost/compress)</summary>
    
    ###
    [`v1.18.0`](https://redirect.github.com/klauspost/compress/releases/tag/v1.18.0)
    
    [Compare
    Source](https://redirect.github.com/klauspost/compress/compare/v1.17.11...v1.18.0)
    
    ##### What's Changed
    
    - Deprecate Go 1.21 and add 1.24 by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1055](https://redirect.github.com/klauspost/compress/pull/1055)
    - Add unsafe little endian loaders by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1036](https://redirect.github.com/klauspost/compress/pull/1036)
    - fix: check `r.err != nil` but return a nil value error `err` by
    [@&#8203;alingse](https://redirect.github.com/alingse) in
    [https://github.com/klauspost/compress/pull/1028](https://redirect.github.com/klauspost/compress/pull/1028)
    - refactor: use built-in `min` function by
    [@&#8203;Juneezee](https://redirect.github.com/Juneezee) in
    [https://github.com/klauspost/compress/pull/1038](https://redirect.github.com/klauspost/compress/pull/1038)
    - zstd: use `slices.Max` for max value in slice by
    [@&#8203;Juneezee](https://redirect.github.com/Juneezee) in
    [https://github.com/klauspost/compress/pull/1041](https://redirect.github.com/klauspost/compress/pull/1041)
    - flate: Simplify L4-6 loading by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1043](https://redirect.github.com/klauspost/compress/pull/1043)
    - flate: Simplify matchlen (remove asm) by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1045](https://redirect.github.com/klauspost/compress/pull/1045)
    - s2: Add block decode fuzzer by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1044](https://redirect.github.com/klauspost/compress/pull/1044)
    - s2: Improve small block compression speed w/o asm by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1048](https://redirect.github.com/klauspost/compress/pull/1048)
    - flate: Fix matchlen L5+L6 by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1049](https://redirect.github.com/klauspost/compress/pull/1049)
    - flate: Cleanup & reduce casts by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1050](https://redirect.github.com/klauspost/compress/pull/1050)
    
    ##### New Contributors
    
    - [@&#8203;tcpdumppy](https://redirect.github.com/tcpdumppy) made their
    first contribution in
    [https://github.com/klauspost/compress/pull/1021](https://redirect.github.com/klauspost/compress/pull/1021)
    - [@&#8203;sam9291](https://redirect.github.com/sam9291) made their
    first contribution in
    [https://github.com/klauspost/compress/pull/1022](https://redirect.github.com/klauspost/compress/pull/1022)
    - [@&#8203;dezza](https://redirect.github.com/dezza) made their first
    contribution in
    [https://github.com/klauspost/compress/pull/1023](https://redirect.github.com/klauspost/compress/pull/1023)
    - [@&#8203;alingse](https://redirect.github.com/alingse) made their
    first contribution in
    [https://github.com/klauspost/compress/pull/1028](https://redirect.github.com/klauspost/compress/pull/1028)
    - [@&#8203;hyunsooda](https://redirect.github.com/hyunsooda) made their
    first contribution in
    [https://github.com/klauspost/compress/pull/1031](https://redirect.github.com/klauspost/compress/pull/1031)
    - [@&#8203;Juneezee](https://redirect.github.com/Juneezee) made their
    first contribution in
    [https://github.com/klauspost/compress/pull/1038](https://redirect.github.com/klauspost/compress/pull/1038)
    - [@&#8203;Bbulatov](https://redirect.github.com/Bbulatov) made their
    first contribution in
    [https://github.com/klauspost/compress/pull/1052](https://redirect.github.com/klauspost/compress/pull/1052)
    
    **Full Changelog**:
    https://github.com/klauspost/compress/compare/v1.17.11...v1.18.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4xNzYuMiIsInVwZGF0ZWRJblZlciI6IjM5LjE3Ni4yIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
