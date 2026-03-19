commit 872a25e9f83d34f506c3f1f6d131c10a586a5176
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Mon Jul 21 22:12:52 2025 +0000

    Update module github.com/spf13/pflag to v1.0.7 (#13447)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Confidence |
    |---|---|---|---|
    | [github.com/spf13/pflag](https://redirect.github.com/spf13/pflag) |
    `v1.0.6` -> `v1.0.7` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fspf13%2fpflag/v1.0.7?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fspf13%2fpflag/v1.0.6/v1.0.7?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>spf13/pflag (github.com/spf13/pflag)</summary>
    
    ###
    [`v1.0.7`](https://redirect.github.com/spf13/pflag/releases/tag/v1.0.7)
    
    [Compare
    Source](https://redirect.github.com/spf13/pflag/compare/v1.0.6...v1.0.7)
    
    #### What's Changed
    
    - Fix defaultIsZeroValue check for generic Value types by
    [@&#8203;MidnightRocket](https://redirect.github.com/MidnightRocket) in
    [https://github.com/spf13/pflag/pull/422](https://redirect.github.com/spf13/pflag/pull/422)
    - feat: Use structs for errors returned by pflag. by
    [@&#8203;eth-p](https://redirect.github.com/eth-p) in
    [https://github.com/spf13/pflag/pull/425](https://redirect.github.com/spf13/pflag/pull/425)
    - Fix typos by [@&#8203;co63oc](https://redirect.github.com/co63oc) in
    [https://github.com/spf13/pflag/pull/428](https://redirect.github.com/spf13/pflag/pull/428)
    - fix [#&#8203;423](https://redirect.github.com/spf13/pflag/issues/423)
    : Add helper function and some documentation to parse shorthand go test
    flags. by [@&#8203;valdar](https://redirect.github.com/valdar) in
    [https://github.com/spf13/pflag/pull/424](https://redirect.github.com/spf13/pflag/pull/424)
    - add support equivalent to golang flag.TextVar(), also fixes the test
    failure as described in
    [#&#8203;368](https://redirect.github.com/spf13/pflag/issues/368) by
    [@&#8203;hujun-open](https://redirect.github.com/hujun-open) in
    [https://github.com/spf13/pflag/pull/418](https://redirect.github.com/spf13/pflag/pull/418)
    - add support for Func() and BoolFunc()
    [#&#8203;426](https://redirect.github.com/spf13/pflag/issues/426) by
    [@&#8203;LeGEC](https://redirect.github.com/LeGEC) in
    [https://github.com/spf13/pflag/pull/429](https://redirect.github.com/spf13/pflag/pull/429)
    - fix: correct argument length check in FlagSet.Parse by
    [@&#8203;ShawnJeffersonWang](https://redirect.github.com/ShawnJeffersonWang)
    in
    [https://github.com/spf13/pflag/pull/409](https://redirect.github.com/spf13/pflag/pull/409)
    - fix usage message for func flags, fix arguments order by
    [@&#8203;LeGEC](https://redirect.github.com/LeGEC) in
    [https://github.com/spf13/pflag/pull/431](https://redirect.github.com/spf13/pflag/pull/431)
    - Add support for time.Time flags by
    [@&#8203;max-frank](https://redirect.github.com/max-frank) in
    [https://github.com/spf13/pflag/pull/348](https://redirect.github.com/spf13/pflag/pull/348)
    
    #### New Contributors
    
    - [@&#8203;MidnightRocket](https://redirect.github.com/MidnightRocket)
    made their first contribution in
    [https://github.com/spf13/pflag/pull/422](https://redirect.github.com/spf13/pflag/pull/422)
    - [@&#8203;eth-p](https://redirect.github.com/eth-p) made their first
    contribution in
    [https://github.com/spf13/pflag/pull/425](https://redirect.github.com/spf13/pflag/pull/425)
    - [@&#8203;co63oc](https://redirect.github.com/co63oc) made their first
    contribution in
    [https://github.com/spf13/pflag/pull/428](https://redirect.github.com/spf13/pflag/pull/428)
    - [@&#8203;valdar](https://redirect.github.com/valdar) made their first
    contribution in
    [https://github.com/spf13/pflag/pull/424](https://redirect.github.com/spf13/pflag/pull/424)
    - [@&#8203;hujun-open](https://redirect.github.com/hujun-open) made
    their first contribution in
    [https://github.com/spf13/pflag/pull/418](https://redirect.github.com/spf13/pflag/pull/418)
    - [@&#8203;LeGEC](https://redirect.github.com/LeGEC) made their first
    contribution in
    [https://github.com/spf13/pflag/pull/429](https://redirect.github.com/spf13/pflag/pull/429)
    -
    [@&#8203;ShawnJeffersonWang](https://redirect.github.com/ShawnJeffersonWang)
    made their first contribution in
    [https://github.com/spf13/pflag/pull/409](https://redirect.github.com/spf13/pflag/pull/409)
    - [@&#8203;max-frank](https://redirect.github.com/max-frank) made their
    first contribution in
    [https://github.com/spf13/pflag/pull/348](https://redirect.github.com/spf13/pflag/pull/348)
    
    **Full Changelog**:
    https://github.com/spf13/pflag/compare/v1.0.6...v1.0.7
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MS40MC4wIiwidXBkYXRlZEluVmVyIjoiNDEuNDAuMCIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
