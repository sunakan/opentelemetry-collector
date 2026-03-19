commit 8e92094193c89f73d9503788028fe43941c54eea
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Feb 25 12:53:55 2026 +0100

    Fix ExpandedValue behavior for *string fields (#14617)
    
    #### Description
    
    The `useExpandValue` hook in `confmap` makes sure that we can parse
    externally-loaded values such as environment values as YAML when needed,
    but that they can remain interpreted as strings when assigned to
    `string` fields. However, until this PR, this did not extend to
    `*string` fields, like [the ones in the `service::telemetry::resource`
    map](https://github.com/open-telemetry/opentelemetry-collector/blob/587b90b9ecc1db959ee9104d5bf993591f80ca43/service/telemetry/otelconftelemetry/config.go#L23),
    causing `expected type 'string', got unconvertible type` errors when
    assigning environment variables that can be parsed as a non-string YAML
    type to resource attributes.
    
    I believe this PR will not change behavior outside of resolving that
    error. In principle, there could be a change if `ExpandedValue.Value`
    has a type compatible with a `*string` field, but with a different value
    from `ExpandedValue.Original`. I thought this could perhaps happen if an
    environment variable contains a quoted string (the YAML parsed value
    would be a `string` with the quotes removed), but it looks like [we
    explicitly refuse to parse YAML
    strings](https://github.com/open-telemetry/opentelemetry-collector/blob/587b90b9ecc1db959ee9104d5bf993591f80ca43/confmap/provider.go#L170-L173)
    ([tested for
    here](https://github.com/open-telemetry/opentelemetry-collector/blob/587b90b9ecc1db959ee9104d5bf993591f80ca43/confmap/provider_test.go#L173-L177)).
    
    #### Link to tracking issue
    Fixes #14034
    
    #### Testing
    
    I added a test case in the existing tests for `useExpandValue` to match
    the `map[string]*string` use case. I also manually tested that there is
    no longer a crash in the specific case of a
    `service::telemetry::resource` attribute set to an integer-like
    environment variable, and that the behavior for quoted environment
    variables did not change.
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
