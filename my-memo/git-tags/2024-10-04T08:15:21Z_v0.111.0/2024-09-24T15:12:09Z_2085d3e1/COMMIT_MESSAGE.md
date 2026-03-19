commit 2085d3e1f6dbaef7be3272f76835dabdf9c1753c
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Sep 24 08:12:09 2024 -0700

    fix(deps): update module github.com/klauspost/compress to v1.17.10 (#11256)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/klauspost/compress](https://redirect.github.com/klauspost/compress)
    | `v1.17.9` -> `v1.17.10` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fklauspost%2fcompress/v1.17.10?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fklauspost%2fcompress/v1.17.10?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fklauspost%2fcompress/v1.17.9/v1.17.10?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fklauspost%2fcompress/v1.17.9/v1.17.10?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v1.17.10`](https://redirect.github.com/klauspost/compress/releases/tag/v1.17.10)
    
    [Compare
    Source](https://redirect.github.com/klauspost/compress/compare/v1.17.9...v1.17.10)
    
    #### What's Changed
    
    - gzhttp: Add TransportAlwaysDecompress option. by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/978](https://redirect.github.com/klauspost/compress/pull/978)
    - s2: Add EncodeBuffer buffer recycling callback by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/982](https://redirect.github.com/klauspost/compress/pull/982)
    - zstd: Improve memory usage on small streaming encodes by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1007](https://redirect.github.com/klauspost/compress/pull/1007)
    - gzhttp: Add supported decompress request body by
    [@&#8203;mirecl](https://redirect.github.com/mirecl) in
    [https://github.com/klauspost/compress/pull/1002](https://redirect.github.com/klauspost/compress/pull/1002)
    - flate: read data written with partial flush by
    [@&#8203;vajexal](https://redirect.github.com/vajexal) in
    [https://github.com/klauspost/compress/pull/996](https://redirect.github.com/klauspost/compress/pull/996)
    - ci: Upgrade Go & other by
    [@&#8203;klauspost](https://redirect.github.com/klauspost) in
    [https://github.com/klauspost/compress/pull/1008](https://redirect.github.com/klauspost/compress/pull/1008)
    - docs: Small typofix in comment by
    [@&#8203;Jille](https://redirect.github.com/Jille) in
    [https://github.com/klauspost/compress/pull/976](https://redirect.github.com/klauspost/compress/pull/976)
    - build(deps): bump the github-actions group with 2 updates by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/klauspost/compress/pull/979](https://redirect.github.com/klauspost/compress/pull/979)
    - docs: Fix URL typo when installing builddict by
    [@&#8203;Wikidepia](https://redirect.github.com/Wikidepia) in
    [https://github.com/klauspost/compress/pull/980](https://redirect.github.com/klauspost/compress/pull/980)
    - build(deps): bump the github-actions group with 2 updates by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/klauspost/compress/pull/985](https://redirect.github.com/klauspost/compress/pull/985)
    - Fix typos by [@&#8203;deining](https://redirect.github.com/deining) in
    [https://github.com/klauspost/compress/pull/986](https://redirect.github.com/klauspost/compress/pull/986)
    - build(deps): bump github/codeql-action from 3.25.15 to 3.26.6 in the
    github-actions group by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/klauspost/compress/pull/997](https://redirect.github.com/klauspost/compress/pull/997)
    
    #### New Contributors
    
    - [@&#8203;Wikidepia](https://redirect.github.com/Wikidepia) made their
    first contribution in
    [https://github.com/klauspost/compress/pull/980](https://redirect.github.com/klauspost/compress/pull/980)
    - [@&#8203;deining](https://redirect.github.com/deining) made their
    first contribution in
    [https://github.com/klauspost/compress/pull/986](https://redirect.github.com/klauspost/compress/pull/986)
    - [@&#8203;vajexal](https://redirect.github.com/vajexal) made their
    first contribution in
    [https://github.com/klauspost/compress/pull/996](https://redirect.github.com/klauspost/compress/pull/996)
    - [@&#8203;mirecl](https://redirect.github.com/mirecl) made their first
    contribution in
    [https://github.com/klauspost/compress/pull/1002](https://redirect.github.com/klauspost/compress/pull/1002)
    
    **Full Changelog**:
    https://github.com/klauspost/compress/compare/v1.17.9...v1.17.10
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOC44MC4wIiwidXBkYXRlZEluVmVyIjoiMzguODAuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
