commit caa711ee725aa5e73c507728055d0369115c045f
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Tue Jan 6 17:39:16 2026 +0000

    chore(deps): update module github.com/grpc-ecosystem/grpc-gateway/v2 to v2.27.4 (#14378)
    
    This PR contains the following updates:
    
    | Package | Change |
    [Age](https://docs.renovatebot.com/merge-confidence/) |
    [Confidence](https://docs.renovatebot.com/merge-confidence/) |
    |---|---|---|---|
    |
    [github.com/grpc-ecosystem/grpc-gateway/v2](https://redirect.github.com/grpc-ecosystem/grpc-gateway)
    | `v2.27.2` → `v2.27.4` |
    ![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fgrpc-ecosystem%2fgrpc-gateway%2fv2/v2.27.4?slim=true)
    |
    ![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fgrpc-ecosystem%2fgrpc-gateway%2fv2/v2.27.2/v2.27.4?slim=true)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>grpc-ecosystem/grpc-gateway
    (github.com/grpc-ecosystem/grpc-gateway/v2)</summary>
    
    ###
    [`v2.27.4`](https://redirect.github.com/grpc-ecosystem/grpc-gateway/releases/tag/v2.27.4)
    
    [Compare
    Source](https://redirect.github.com/grpc-ecosystem/grpc-gateway/compare/v2.27.3...v2.27.4)
    
    #### What's Changed
    
    - feat: support deprecated field for OpenAPI parameters by
    [@&#8203;lachlancooper](https://redirect.github.com/lachlancooper) in
    [#&#8203;6068](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6068)
    - fix(openapiv2): Invalid entries in body parameter schema required
    array when using `body: "field_name"` by
    [@&#8203;rdark](https://redirect.github.com/rdark) in
    [#&#8203;6088](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6088)
    - fix(openapiv2): prevent nested required fields hoisting to parent
    schema by [@&#8203;rdark](https://redirect.github.com/rdark) in
    [#&#8203;6078](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6078)
    - \[issue-6080] Fix strict `no-$ref-siblings` rule violations by
    [@&#8203;jgreffe](https://redirect.github.com/jgreffe) in
    [#&#8203;6099](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6099)
    - Dockerfile: upgrade openjdk version by
    [@&#8203;johanbrandhorst](https://redirect.github.com/johanbrandhorst)
    in
    [#&#8203;6130](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6130)
    - fix: Exclude methods without HTTP bindings from OpenAPI definitions by
    [@&#8203;iamrajiv](https://redirect.github.com/iamrajiv) in
    [#&#8203;6030](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6030)
    - Add note about Authorization header forwarding by
    [@&#8203;MicahParks](https://redirect.github.com/MicahParks) in
    [#&#8203;6185](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6185)
    - fix(gengateway): correct body field decoding in opaque API mode by
    [@&#8203;kop](https://redirect.github.com/kop) in
    [#&#8203;6197](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6197)
    
    #### New Contributors
    
    - [@&#8203;lachlancooper](https://redirect.github.com/lachlancooper)
    made their first contribution in
    [#&#8203;6068](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6068)
    - [@&#8203;rdark](https://redirect.github.com/rdark) made their first
    contribution in
    [#&#8203;6088](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6088)
    - [@&#8203;jgreffe](https://redirect.github.com/jgreffe) made their
    first contribution in
    [#&#8203;6099](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6099)
    - [@&#8203;MicahParks](https://redirect.github.com/MicahParks) made
    their first contribution in
    [#&#8203;6185](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/6185)
    
    **Full Changelog**:
    <https://github.com/grpc-ecosystem/grpc-gateway/compare/v2.27.3...v2.27.4>
    
    ###
    [`v2.27.3`](https://redirect.github.com/grpc-ecosystem/grpc-gateway/releases/tag/v2.27.3)
    
    [Compare
    Source](https://redirect.github.com/grpc-ecosystem/grpc-gateway/compare/v2.27.2...v2.27.3)
    
    #### What's Changed
    
    - refactor(runtime): using reflect.TypeFor by
    [@&#8203;cuiweixie](https://redirect.github.com/cuiweixie) in
    [#&#8203;5868](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5868)
    - fix(runtime): annotate context even if no incoming headers by
    [@&#8203;boolangery](https://redirect.github.com/boolangery) in
    [#&#8203;5887](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5887)
    - feat: add Opaque API and Protobuf Editions support by
    [@&#8203;kop](https://redirect.github.com/kop) in
    [#&#8203;5723](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5723)
    - fix: annotate healthz endpoint handler by
    [@&#8203;ZY-Ang](https://redirect.github.com/ZY-Ang) in
    [#&#8203;5914](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5914)
    - expand\_slash\_patterns=true now converts parameters with hyphens
    correctly by
    [@&#8203;goulashify](https://redirect.github.com/goulashify) in
    [#&#8203;5938](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5938)
    
    #### New Contributors
    
    - [@&#8203;cuiweixie](https://redirect.github.com/cuiweixie) made their
    first contribution in
    [#&#8203;5868](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5868)
    - [@&#8203;boolangery](https://redirect.github.com/boolangery) made
    their first contribution in
    [#&#8203;5887](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5887)
    - [@&#8203;kop](https://redirect.github.com/kop) made their first
    contribution in
    [#&#8203;5723](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5723)
    - [@&#8203;ZY-Ang](https://redirect.github.com/ZY-Ang) made their first
    contribution in
    [#&#8203;5914](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5914)
    - [@&#8203;goulashify](https://redirect.github.com/goulashify) made
    their first contribution in
    [#&#8203;5938](https://redirect.github.com/grpc-ecosystem/grpc-gateway/pull/5938)
    
    **Full Changelog**:
    <https://github.com/grpc-ecosystem/grpc-gateway/compare/v2.27.2...v2.27.3>
    
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
    
    ---------
    
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: otelbot <197425009+otelbot@users.noreply.github.com>
