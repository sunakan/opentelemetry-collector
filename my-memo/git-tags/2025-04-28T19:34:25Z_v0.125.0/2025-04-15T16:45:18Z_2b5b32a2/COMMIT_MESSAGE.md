commit 2b5b32a2e1749bf11c5a15c79331ffa94652ff78
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Apr 15 09:45:18 2025 -0700

    fix(deps): update module github.com/knadh/koanf/v2 to v2.2.0 (#12857)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    | [github.com/knadh/koanf/v2](https://redirect.github.com/knadh/koanf) |
    `v2.1.2` -> `v2.2.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fknadh%2fkoanf%2fv2/v2.2.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fknadh%2fkoanf%2fv2/v2.2.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fknadh%2fkoanf%2fv2/v2.1.2/v2.2.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fknadh%2fkoanf%2fv2/v2.1.2/v2.2.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
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
    [`v2.2.0`](https://redirect.github.com/knadh/koanf/releases/tag/v2.2.0)
    
    [Compare
    Source](https://redirect.github.com/knadh/koanf/compare/v2.1.2...v2.2.0)
    
    This release sets the min required Go version to v1.23.0
    
    An increasing number of important updates to various deps, including
    golang.org/x/\*, require go >= 1.23.0. It is now untenable
    to maintain support for older Go versions. This does not break existing
    installations, just that further updates will only be available to newer
    Go versions.
    
    #### What's Changed
    
    - Update CI by [@&#8203;StefMa](https://redirect.github.com/StefMa) in
    [https://github.com/knadh/koanf/pull/332](https://redirect.github.com/knadh/koanf/pull/332)
    - Fix typos by
    [@&#8203;NathanBaulch](https://redirect.github.com/NathanBaulch) in
    [https://github.com/knadh/koanf/pull/336](https://redirect.github.com/knadh/koanf/pull/336)
    - adds urfave/cli/v2 flag parser by
    [@&#8203;joicemjoseph](https://redirect.github.com/joicemjoseph) in
    [https://github.com/knadh/koanf/pull/330](https://redirect.github.com/knadh/koanf/pull/330)
    - Bump golang.org/x/net from 0.23.0 to 0.36.0 in /providers/consul by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/342](https://redirect.github.com/knadh/koanf/pull/342)
    - Added support for Azure Keyvault by
    [@&#8203;arawin1979](https://redirect.github.com/arawin1979) in
    [https://github.com/knadh/koanf/pull/343](https://redirect.github.com/knadh/koanf/pull/343)
    - Bump golang.org/x/crypto from 0.21.0 to 0.35.0 in /providers/vault by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/348](https://redirect.github.com/knadh/koanf/pull/348)
    - Bump golang.org/x/crypto from 0.17.0 to 0.35.0 in /providers/nats by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/347](https://redirect.github.com/knadh/koanf/pull/347)
    - Bump github.com/golang-jwt/jwt/v5 from 5.2.1 to 5.2.2 in /examples by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/346](https://redirect.github.com/knadh/koanf/pull/346)
    - Bump golang.org/x/net from 0.23.0 to 0.36.0 in /providers/vault by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/knadh/koanf/pull/344](https://redirect.github.com/knadh/koanf/pull/344)
    - Upgrade min Go version and deps across all providers and parsers by
    [@&#8203;knadh](https://redirect.github.com/knadh) in
    [https://github.com/knadh/koanf/pull/349](https://redirect.github.com/knadh/koanf/pull/349)
    
    #### New Contributors
    
    - [@&#8203;NathanBaulch](https://redirect.github.com/NathanBaulch) made
    their first contribution in
    [https://github.com/knadh/koanf/pull/336](https://redirect.github.com/knadh/koanf/pull/336)
    - [@&#8203;joicemjoseph](https://redirect.github.com/joicemjoseph) made
    their first contribution in
    [https://github.com/knadh/koanf/pull/330](https://redirect.github.com/knadh/koanf/pull/330)
    - [@&#8203;arawin1979](https://redirect.github.com/arawin1979) made
    their first contribution in
    [https://github.com/knadh/koanf/pull/343](https://redirect.github.com/knadh/koanf/pull/343)
    
    **Full Changelog**:
    https://github.com/knadh/koanf/compare/v2.1.2...v2.2.0
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiIzOS4yMzguMCIsInVwZGF0ZWRJblZlciI6IjM5LjIzOC4wIiwidGFyZ2V0QnJhbmNoIjoibWFpbiIsImxhYmVscyI6WyJkZXBlbmRlbmNpZXMiLCJyZW5vdmF0ZWJvdCJdfQ==-->
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
