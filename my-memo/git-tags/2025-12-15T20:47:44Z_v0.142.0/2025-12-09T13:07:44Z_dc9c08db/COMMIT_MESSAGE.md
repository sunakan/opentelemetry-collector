commit dc9c08db11422609cecc43a00216fe5bd5949659
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Dec 9 14:07:44 2025 +0100

    Don't call Marshal in unmarshalerEmbeddedStructsHookFunc (#14213)
    
    ## Context
    
    `confmap` uses a `mapstructure` hook to call the `Unmarshal` method on
    types which define it as part of the unmarshaling process, but
    `mapstructure` hooks are not called for squashed fields, so we have a
    separate hook which manually inspects all structs for squashed fields
    that implement `Unmarshaler`.
    
    This second hook currently returns a modified version of the raw YAML
    config, to be used by `mapstructure` to finish unmarshaling the full
    struct. This is a problem, because an `Unmarshal` method can set the
    state of the struct in arbitrary ways, which we want to preserve without
    `mapstructure` overwriting fields. (See `TestEmbeddedUnmarshaler`)
    
    The way this is currently worked around is by marshaling the embedded
    struct into a map, and then copying that map back into the raw config,
    in the hope that nothing will change when the raw config is mapped back
    into the struct.
    
    However, this assumption breaks when dealing with a
    `configopaque.String` inside an embedded `Unmarshaler`. That type has
    the very deliberate behavior of returning `[REDACTED]` when marshaled
    instead of its true contents, meaning marshaling then unmarshaling does
    not round trip.
    
    ## Description
    
    This PR attempts to fix this issue and make embedded `Unmarshaler`s more
    reliable by modifying the hook so that it returns a fully unmarshaled
    struct, leading `mapstructure` to do nothing. (This is what the basic
    `Unmarshaler` hook does to avoid "interference".)
    
    This means the hook needs to somehow unmarshal the non-`Unmarshaler`
    subfields manually, without affecting the input or output of
    `Unmarshal`. I did this by constructing a custom "partial" struct using
    `reflect.StructOf` which only contains the non-`Unmarshaler` fields,
    copying the initial values into it, calling `Decode` on it, then copying
    the output values back into the original struct.
    
    In a previous version of this PR, I kept most of the hook intact, but
    changed the logic so that we clear fields from the raw config when they
    might conflict with the embedded struct (instead of setting those fields
    to the embedded struct's current value). However, this has the side
    effect of breaking unmarshaling of structs with multiple
    identically-named fields, of which there is [at least one in
    contrib](https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/320ef1ca9bb4593b498eb3d849659c55d6a7eccc/receiver/dockerstatsreceiver/config.go#L17)
    (both `docker.Config` and `scraperhelper.ControllerConfig` have a
    `Timeout` field, and one of them implements `Unmarshaler`).
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
