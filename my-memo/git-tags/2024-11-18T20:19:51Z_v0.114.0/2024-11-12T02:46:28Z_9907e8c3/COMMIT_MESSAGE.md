commit 9907e8c3fa2405c49cb24e1aa4229e5e742c7824
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Mon Nov 11 19:46:28 2024 -0700

    fix(deps): update module github.com/knadh/koanf/v2 to v2.1.2 (#11640)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [github.com/knadh/koanf/v2](https://redirect.github.com/knadh/koanf) |
    `v2.1.1` -> `v2.1.2` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fknadh%2fkoanf%2fv2/v2.1.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fknadh%2fkoanf%2fv2/v2.1.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fknadh%2fkoanf%2fv2/v2.1.1/v2.1.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fknadh%2fkoanf%2fv2/v2.1.1/v2.1.2?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>knadh/koanf (github.com/knadh/koanf/v2)</summary>
    
    ###
    [`v2.1.2`](https://redirect.github.com/knadh/koanf/releases/tag/v2.1.2)
    
    [Compare
    Source](https://redirect.github.com/knadh/koanf/compare/v2.1.1...v2.1.2)
    
    ##### What's Changed
    
    - chore: Update godoc URL in README by
    [@&#8203;rhnvrm](https://redirect.github.com/rhnvrm) in
    [https://github.com/knadh/koanf/pull/279](https://redirect.github.com/knadh/koanf/pull/279)
    - Add support for parser TOML v2 spec by
    [@&#8203;knadh](https://redirect.github.com/knadh) in
    [https://github.com/knadh/koanf/pull/286](https://redirect.github.com/knadh/koanf/pull/286)
    - Bump golang.org/x/net from 0.17.0 to 0.23.0 in /providers/consul by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/289](https://redirect.github.com/knadh/koanf/pull/289)
    - Bump golang.org/x/net from 0.17.0 to 0.23.0 in /providers/vault by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/288](https://redirect.github.com/knadh/koanf/pull/288)
    - Bump golang.org/x/net from 0.17.0 to 0.23.0 in /examples by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/290](https://redirect.github.com/knadh/koanf/pull/290)
    - Bump golang.org/x/net from 0.17.0 to 0.23.0 in /providers/etcd by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/287](https://redirect.github.com/knadh/koanf/pull/287)
    - upgrade toml v2 package to 2.2.2 by
    [@&#8203;GreyXor](https://redirect.github.com/GreyXor) in
    [https://github.com/knadh/koanf/pull/292](https://redirect.github.com/knadh/koanf/pull/292)
    - Bump github.com/hashicorp/go-retryablehttp from 0.7.2 to 0.7.7 in
    /providers/vault by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/301](https://redirect.github.com/knadh/koanf/pull/301)
    - Upgrade fsnotify lib in file provider. by
    [@&#8203;knadh](https://redirect.github.com/knadh) in
    [https://github.com/knadh/koanf/pull/302](https://redirect.github.com/knadh/koanf/pull/302)
    - Bump github.com/hashicorp/go-retryablehttp from 0.7.2 to 0.7.7 in
    /examples by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/303](https://redirect.github.com/knadh/koanf/pull/303)
    - Add `Unwatch()` to file provider. by
    [@&#8203;knadh](https://redirect.github.com/knadh) in
    [https://github.com/knadh/koanf/pull/306](https://redirect.github.com/knadh/koanf/pull/306)
    - docs: Improve marshal section by
    [@&#8203;bersace](https://redirect.github.com/bersace) in
    [https://github.com/knadh/koanf/pull/311](https://redirect.github.com/knadh/koanf/pull/311)
    - fix(basicflag): option not apply by
    [@&#8203;qianlongzt](https://redirect.github.com/qianlongzt) in
    [https://github.com/knadh/koanf/pull/322](https://redirect.github.com/knadh/koanf/pull/322)
    - Fix incorrect unflatten in env provider. Closes
    [#&#8203;319](https://redirect.github.com/knadh/koanf/issues/319). by
    [@&#8203;knadh](https://redirect.github.com/knadh) in
    [https://github.com/knadh/koanf/pull/324](https://redirect.github.com/knadh/koanf/pull/324)
    - fix: update file watch to trigger callback after symbolic link changes
    by [@&#8203;jondavidnd1](https://redirect.github.com/jondavidnd1) in
    [https://github.com/knadh/koanf/pull/326](https://redirect.github.com/knadh/koanf/pull/326)
    - Update mapstructure to a stable version by
    [@&#8203;StefMa](https://redirect.github.com/StefMa) in
    [https://github.com/knadh/koanf/pull/331](https://redirect.github.com/knadh/koanf/pull/331)
    
    ##### New Contributors
    
    - [@&#8203;bersace](https://redirect.github.com/bersace) made their
    first contribution in
    [https://github.com/knadh/koanf/pull/311](https://redirect.github.com/knadh/koanf/pull/311)
    - [@&#8203;qianlongzt](https://redirect.github.com/qianlongzt) made
    their first contribution in
    [https://github.com/knadh/koanf/pull/322](https://redirect.github.com/knadh/koanf/pull/322)
    - [@&#8203;jondavidnd1](https://redirect.github.com/jondavidnd1) made
    their first contribution in
    [https://github.com/knadh/koanf/pull/326](https://redirect.github.com/knadh/koanf/pull/326)
    - [@&#8203;StefMa](https://redirect.github.com/StefMa) made their first
    contribution in
    [https://github.com/knadh/koanf/pull/331](https://redirect.github.com/knadh/koanf/pull/331)
    
    **Full Changelog**:
    https://github.com/knadh/koanf/compare/v2.1.1...v2.1.2
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS45LjUiLCJ1cGRhdGVkSW5WZXIiOiIzOS45LjUiLCJ0YXJnZXRCcmFuY2giOiJtYWluIiwibGFiZWxzIjpbImRlcGVuZGVuY2llcyIsInJlbm92YXRlYm90Il19-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
