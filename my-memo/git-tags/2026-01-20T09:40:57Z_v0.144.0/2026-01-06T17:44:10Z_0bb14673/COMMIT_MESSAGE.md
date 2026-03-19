commit 0bb1467356c29719339eaa90bfff27588fcb623a
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 6 17:44:10 2026 +0000

    chore(deps): update module github.com/cloudflare/circl to v1.6.2 (#14370)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [github.com/cloudflare/circl](https://redirect.github.com/cloudflare/circl)
    | `v1.6.1` → `v1.6.2` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fcloudflare%2fcircl/v1.6.2?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fcloudflare%2fcircl/v1.6.1/v1.6.2?slim=true)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>cloudflare/circl (github.com/cloudflare/circl)</summary>
    
    ###
    [`v1.6.2`](https://redirect.github.com/cloudflare/circl/releases/tag/v1.6.2):
    CIRCL v1.6.2
    
    [Compare
    Source](https://redirect.github.com/cloudflare/circl/compare/v1.6.1...v1.6.2)
    
    #### CIRCL v1.6.2
    
    - New SLH-DSA, improvements in ML-DSA for arm64.
    - Tested compilation on WASM.
    
    #### What's Changed
    
    - Optimize pairing product computation by moving exponentiations to G1.
    by [@&#8203;dfaranha](https://redirect.github.com/dfaranha) in
    [#&#8203;547](https://redirect.github.com/cloudflare/circl/pull/547)
    - sign: Adding SLH-DSA signature by
    [@&#8203;armfazh](https://redirect.github.com/armfazh) in
    [#&#8203;512](https://redirect.github.com/cloudflare/circl/pull/512)
    - Update code generators to CIRCL v1.6.1. by
    [@&#8203;armfazh](https://redirect.github.com/armfazh) in
    [#&#8203;548](https://redirect.github.com/cloudflare/circl/pull/548)
    - ML-DSA: Add preliminary Wycheproof test vectors by
    [@&#8203;bwesterb](https://redirect.github.com/bwesterb) in
    [#&#8203;552](https://redirect.github.com/cloudflare/circl/pull/552)
    - go fmt by [@&#8203;bwesterb](https://redirect.github.com/bwesterb) in
    [#&#8203;554](https://redirect.github.com/cloudflare/circl/pull/554)
    - gz-compressing test vectors, use of HexBytes and ReadGzip functions.
    by [@&#8203;armfazh](https://redirect.github.com/armfazh) in
    [#&#8203;555](https://redirect.github.com/cloudflare/circl/pull/555)
    - group: Removes use of elliptic Marshal and Unmarshal functions. by
    [@&#8203;armfazh](https://redirect.github.com/armfazh) in
    [#&#8203;556](https://redirect.github.com/cloudflare/circl/pull/556)
    - Support encoding/decoding ML-DSA private keys (as long as they contain
    seeds) by [@&#8203;bwesterb](https://redirect.github.com/bwesterb) in
    [#&#8203;559](https://redirect.github.com/cloudflare/circl/pull/559)
    - Update to golangci-lint v2 by
    [@&#8203;bwesterb](https://redirect.github.com/bwesterb) in
    [#&#8203;560](https://redirect.github.com/cloudflare/circl/pull/560)
    - Preparation for ARM64 Implementation of poly operations for dilithium
    package. by
    [@&#8203;elementrics](https://redirect.github.com/elementrics) in
    [#&#8203;562](https://redirect.github.com/cloudflare/circl/pull/562)
    - prepare power2Round for custom implementations in assembly by
    [@&#8203;elementrics](https://redirect.github.com/elementrics) in
    [#&#8203;564](https://redirect.github.com/cloudflare/circl/pull/564)
    - ARM64 implementation for poly.PackLe16 by
    [@&#8203;elementrics](https://redirect.github.com/elementrics) in
    [#&#8203;563](https://redirect.github.com/cloudflare/circl/pull/563)
    - add arm64 version of polyMulBy2toD by
    [@&#8203;elementrics](https://redirect.github.com/elementrics) in
    [#&#8203;565](https://redirect.github.com/cloudflare/circl/pull/565)
    - add arm64 version of polySub by
    [@&#8203;elementrics](https://redirect.github.com/elementrics) in
    [#&#8203;566](https://redirect.github.com/cloudflare/circl/pull/566)
    - group: add byteLen method for short groups and RandomScalar uses
    rand.Int by [@&#8203;armfazh](https://redirect.github.com/armfazh) in
    [#&#8203;568](https://redirect.github.com/cloudflare/circl/pull/568)
    - add arm64 version of poly.Add/Sub by
    [@&#8203;elementrics](https://redirect.github.com/elementrics) in
    [#&#8203;572](https://redirect.github.com/cloudflare/circl/pull/572)
    - group: Adding cryptobyte marshaling to scalars by
    [@&#8203;armfazh](https://redirect.github.com/armfazh) in
    [#&#8203;569](https://redirect.github.com/cloudflare/circl/pull/569)
    - Bumping up to Go1.25 by
    [@&#8203;armfazh](https://redirect.github.com/armfazh) in
    [#&#8203;574](https://redirect.github.com/cloudflare/circl/pull/574)
    - ci: Including WASM compilation. by
    [@&#8203;armfazh](https://redirect.github.com/armfazh) in
    [#&#8203;577](https://redirect.github.com/cloudflare/circl/pull/577)
    - Revert to using package-declared HPKE errors for shortkem instead of
    standard library errors by
    [@&#8203;harshiniwho](https://redirect.github.com/harshiniwho) in
    [#&#8203;578](https://redirect.github.com/cloudflare/circl/pull/578)
    - Release v1.6.2 by
    [@&#8203;armfazh](https://redirect.github.com/armfazh) in
    [#&#8203;579](https://redirect.github.com/cloudflare/circl/pull/579)
    
    #### New Contributors
    
    - [@&#8203;dfaranha](https://redirect.github.com/dfaranha) made their
    first contribution in
    [#&#8203;547](https://redirect.github.com/cloudflare/circl/pull/547)
    - [@&#8203;elementrics](https://redirect.github.com/elementrics) made
    their first contribution in
    [#&#8203;562](https://redirect.github.com/cloudflare/circl/pull/562)
    - [@&#8203;harshiniwho](https://redirect.github.com/harshiniwho) made
    their first contribution in
    [#&#8203;578](https://redirect.github.com/cloudflare/circl/pull/578)
    
    **Full Changelog**:
    <https://github.com/cloudflare/circl/compare/v1.6.1...v1.6.2>
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0Mi42OS4xIiwidXBkYXRlZEluVmVyIjoiNDIuNjkuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
