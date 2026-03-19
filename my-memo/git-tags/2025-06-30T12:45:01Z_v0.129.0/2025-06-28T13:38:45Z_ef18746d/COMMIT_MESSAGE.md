commit ef18746df5429036141b1f71cce80a485c05e175
Author: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
Date:   Sat Jun 28 13:38:45 2025 +0000

    Update module github.com/go-viper/mapstructure/v2 to v2.3.0 [SECURITY] (#13277)
    
    This PR contains the following updates:
    
    | Package | Change | Age | Adoption | Passing | Confidence |
    |---|---|---|---|---|---|
    |
    [github.com/go-viper/mapstructure/v2](https://redirect.github.com/go-viper/mapstructure)
    | `v2.2.1` -> `v2.3.0` |
    [![age](https://developer.mend.io/api/mc/badges/age/go/github.com%2fgo-viper%2fmapstructure%2fv2/v2.3.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![adoption](https://developer.mend.io/api/mc/badges/adoption/go/github.com%2fgo-viper%2fmapstructure%2fv2/v2.3.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![passing](https://developer.mend.io/api/mc/badges/compatibility/go/github.com%2fgo-viper%2fmapstructure%2fv2/v2.2.1/v2.3.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    [![confidence](https://developer.mend.io/api/mc/badges/confidence/go/github.com%2fgo-viper%2fmapstructure%2fv2/v2.2.1/v2.3.0?slim=true)](https://docs.renovatebot.com/merge-confidence/)
    |
    
    ---
    
    > [!WARNING]
    > Some dependencies could not be looked up. Check the Dependency
    Dashboard for more information.
    
    ### GitHub Vulnerability Alerts
    
    ####
    [GHSA-fv92-fjc5-jj9h](https://redirect.github.com/go-viper/mapstructure/security/advisories/GHSA-fv92-fjc5-jj9h)
    
    ### Summary
    
    Use of this library in a security-critical context may result in leaking
    sensitive information, if used to process sensitive fields.
    
    ### Details
    
    OpenBao (and presumably HashiCorp Vault) have surfaced error messages
    from `mapstructure` as follows:
    
    
    https://github.com/openbao/openbao/blob/98c3a59c040efca724353ca46ca79bd5cdbab920/sdk/framework/field_data.go#L43-L50
    
    ```go
                            _, _, err := d.getPrimitive(field, schema)
                            if err != nil {
                                    return fmt.Errorf("error converting input for field %q: %w", field, err)
                            }
    ```
    
    where this calls `mapstructure.WeakDecode(...)`:
    https://github.com/openbao/openbao/blob/98c3a59c040efca724353ca46ca79bd5cdbab920/sdk/framework/field_data.go#L181-L193
    
    ```go
    
    func (d *FieldData) getPrimitive(k string, schema *FieldSchema) (interface{}, bool, error) {
            raw, ok := d.Raw[k]
            if !ok {
                    return nil, false, nil
            }
    
            switch t := schema.Type; t {
            case TypeBool:
                    var result bool
                    if err := mapstructure.WeakDecode(raw, &result); err != nil {
                            return nil, false, err
                    }
                    return result, true, nil
    ```
    
    Notably, `WeakDecode(...)` eventually calls one of the decode helpers,
    which surfaces the original value:
    
    
    https://github.com/go-viper/mapstructure/blob/1a66224d5e54d8757f63bd66339cf764c3292c21/mapstructure.go#L679-L686
    
    
    https://github.com/go-viper/mapstructure/blob/1a66224d5e54d8757f63bd66339cf764c3292c21/mapstructure.go#L726-L730
    
    
    https://github.com/go-viper/mapstructure/blob/1a66224d5e54d8757f63bd66339cf764c3292c21/mapstructure.go#L783-L787
    
    & more.
    
    ### PoC
    
    To reproduce with OpenBao:
    
    ```
    $ podman run -p 8300:8300 openbao/openbao:latest server -dev -dev-root-token-id=root -dev-listen-address=0.0.0.0:8300
    ```
    
    and in a new tab:
    
    ```
    $ BAO_TOKEN=root BAO_ADDR=http://localhost:8300 bao auth enable userpass
    Success! Enabled userpass auth method at: userpass/
    $ curl -X PUT -H "X-Vault-Request: true" -H "X-Vault-Token: root" -d '{"password":{"asdf":"my-sensitive-value"}}' "http://localhost:8300/v1/auth/userpass/users/adsf"
    {"errors":["error converting input for field \"password\": '' expected type 'string', got unconvertible type 'map[string]interface {}', value: 'map[asdf:my-sensitive-value]'"]}
    ```
    
    ### Impact
    
    This is an information disclosure bug with little mitigation. See
    https://discuss.hashicorp.com/t/hcsec-2025-09-vault-may-expose-sensitive-information-in-error-logs-when-processing-malformed-data-with-the-kv-v2-plugin/74717
    for a previous version. That version was fixed, but this is in the
    second part of that error message (starting at `'' expected a map, got
    'string'` -- when the field type is `string` and a `map` is provided, we
    see the above information leak -- the previous example had a `map` type
    field with a `string` value provided).
    
    This was rated 4.5 Medium by HashiCorp in the past iteration.
    
    ---
    
    ### Release Notes
    
    <details>
    <summary>go-viper/mapstructure
    (github.com/go-viper/mapstructure/v2)</summary>
    
    ###
    [`v2.3.0`](https://redirect.github.com/go-viper/mapstructure/releases/tag/v2.3.0)
    
    [Compare
    Source](https://redirect.github.com/go-viper/mapstructure/compare/v2.2.1...v2.3.0)
    
    #### What's Changed
    
    - build(deps): bump actions/checkout from 4.1.7 to 4.2.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/46](https://redirect.github.com/go-viper/mapstructure/pull/46)
    - build(deps): bump golangci/golangci-lint-action from 6.1.0 to 6.1.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/47](https://redirect.github.com/go-viper/mapstructure/pull/47)
    - \[enhancement] Add check for `reflect.Value` in
    `ComposeDecodeHookFunc` by
    [@&#8203;mahadzaryab1](https://redirect.github.com/mahadzaryab1) in
    [https://github.com/go-viper/mapstructure/pull/52](https://redirect.github.com/go-viper/mapstructure/pull/52)
    - build(deps): bump actions/setup-go from 5.0.2 to 5.1.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/51](https://redirect.github.com/go-viper/mapstructure/pull/51)
    - build(deps): bump actions/checkout from 4.2.0 to 4.2.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/50](https://redirect.github.com/go-viper/mapstructure/pull/50)
    - build(deps): bump actions/setup-go from 5.1.0 to 5.2.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/55](https://redirect.github.com/go-viper/mapstructure/pull/55)
    - build(deps): bump actions/setup-go from 5.2.0 to 5.3.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/58](https://redirect.github.com/go-viper/mapstructure/pull/58)
    - ci: add Go 1.24 to the test matrix by
    [@&#8203;sagikazarmark](https://redirect.github.com/sagikazarmark) in
    [https://github.com/go-viper/mapstructure/pull/74](https://redirect.github.com/go-viper/mapstructure/pull/74)
    - build(deps): bump golangci/golangci-lint-action from 6.1.1 to 6.5.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/72](https://redirect.github.com/go-viper/mapstructure/pull/72)
    - build(deps): bump golangci/golangci-lint-action from 6.5.0 to 6.5.1 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/76](https://redirect.github.com/go-viper/mapstructure/pull/76)
    - build(deps): bump actions/setup-go from 5.3.0 to 5.4.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/78](https://redirect.github.com/go-viper/mapstructure/pull/78)
    - feat: add decode hook for netip.Prefix by
    [@&#8203;tklauser](https://redirect.github.com/tklauser) in
    [https://github.com/go-viper/mapstructure/pull/85](https://redirect.github.com/go-viper/mapstructure/pull/85)
    - Updates by
    [@&#8203;sagikazarmark](https://redirect.github.com/sagikazarmark) in
    [https://github.com/go-viper/mapstructure/pull/86](https://redirect.github.com/go-viper/mapstructure/pull/86)
    - build(deps): bump github/codeql-action from 2.13.4 to 3.28.15 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/87](https://redirect.github.com/go-viper/mapstructure/pull/87)
    - build(deps): bump actions/setup-go from 5.4.0 to 5.5.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/93](https://redirect.github.com/go-viper/mapstructure/pull/93)
    - build(deps): bump github/codeql-action from 3.28.15 to 3.28.17 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/92](https://redirect.github.com/go-viper/mapstructure/pull/92)
    - build(deps): bump github/codeql-action from 3.28.17 to 3.28.19 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/97](https://redirect.github.com/go-viper/mapstructure/pull/97)
    - build(deps): bump ossf/scorecard-action from 2.4.1 to 2.4.2 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/96](https://redirect.github.com/go-viper/mapstructure/pull/96)
    - Update README.md by
    [@&#8203;peczenyj](https://redirect.github.com/peczenyj) in
    [https://github.com/go-viper/mapstructure/pull/90](https://redirect.github.com/go-viper/mapstructure/pull/90)
    - Add omitzero tag. by
    [@&#8203;Crystalix007](https://redirect.github.com/Crystalix007) in
    [https://github.com/go-viper/mapstructure/pull/98](https://redirect.github.com/go-viper/mapstructure/pull/98)
    - Use error structs instead of duplicated strings by
    [@&#8203;m1k1o](https://redirect.github.com/m1k1o) in
    [https://github.com/go-viper/mapstructure/pull/102](https://redirect.github.com/go-viper/mapstructure/pull/102)
    - build(deps): bump github/codeql-action from 3.28.19 to 3.29.0 by
    [@&#8203;dependabot](https://redirect.github.com/dependabot) in
    [https://github.com/go-viper/mapstructure/pull/101](https://redirect.github.com/go-viper/mapstructure/pull/101)
    - feat: add common error interface by
    [@&#8203;sagikazarmark](https://redirect.github.com/sagikazarmark) in
    [https://github.com/go-viper/mapstructure/pull/105](https://redirect.github.com/go-viper/mapstructure/pull/105)
    - update linter by
    [@&#8203;sagikazarmark](https://redirect.github.com/sagikazarmark) in
    [https://github.com/go-viper/mapstructure/pull/106](https://redirect.github.com/go-viper/mapstructure/pull/106)
    - Feature allow unset pointer by
    [@&#8203;rostislaved](https://redirect.github.com/rostislaved) in
    [https://github.com/go-viper/mapstructure/pull/80](https://redirect.github.com/go-viper/mapstructure/pull/80)
    
    #### New Contributors
    
    - [@&#8203;tklauser](https://redirect.github.com/tklauser) made their
    first contribution in
    [https://github.com/go-viper/mapstructure/pull/85](https://redirect.github.com/go-viper/mapstructure/pull/85)
    - [@&#8203;peczenyj](https://redirect.github.com/peczenyj) made their
    first contribution in
    [https://github.com/go-viper/mapstructure/pull/90](https://redirect.github.com/go-viper/mapstructure/pull/90)
    - [@&#8203;Crystalix007](https://redirect.github.com/Crystalix007) made
    their first contribution in
    [https://github.com/go-viper/mapstructure/pull/98](https://redirect.github.com/go-viper/mapstructure/pull/98)
    - [@&#8203;rostislaved](https://redirect.github.com/rostislaved) made
    their first contribution in
    [https://github.com/go-viper/mapstructure/pull/80](https://redirect.github.com/go-viper/mapstructure/pull/80)
    
    **Full Changelog**:
    https://github.com/go-viper/mapstructure/compare/v2.2.1...v2.3.0
    
    </details>
    
    ---
    
    ### Configuration
    
    📅 **Schedule**: Branch creation - "" (UTC), Automerge - At any time (no
    schedule defined).
    
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
    
    <!--renovate-debug:eyJjcmVhdGVkSW5WZXIiOiI0MC42Mi4xIiwidXBkYXRlZEluVmVyIjoiNDAuNjIuMSIsInRhcmdldEJyYW5jaCI6Im1haW4iLCJsYWJlbHMiOlsiZGVwZW5kZW5jaWVzIiwicmVub3ZhdGVib3QiXX0=-->
    
    ---------
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: renovate[bot] <29139614+renovate[bot]@users.noreply.github.com>
    Co-authored-by: opentelemetrybot <107717825+opentelemetrybot@users.noreply.github.com>
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
