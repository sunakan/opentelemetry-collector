commit 507664fb82dc85f7afa360746ba968aceff35d47
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Oct 28 11:54:54 2025 +0100

    [configgrpc, confighttp] Support lists of name/value pairs for headers (#13996)
    
    #### Description
    
    This PR introduces:
    - A generic `MapList[T]` type, which is equivalent to `[]{ Name string,
    Value T }`, but can be unmarshalled from a `map[string]T` as well. This
    type is defined in a new `internal/maplist` package.
    - A specialized version exported as `configopaque.MapList`
    
    `configgrpc` and `confighttp` are changed to use this type instead of
    `map[string]configopaque.String` for storing header configuration, so as
    to be consistent with the SDK declarative config (see tracking issue).
    
    Note that while this is relatively elegant, it causes a number of
    breaking changes. An alternative would be to keep the current
    `map[string]configopaque.String` types, and add an Unmarshal method on
    the surrounding struct: see [this
    PoC](https://github.com/jade-guiton-dd/opentelemetry-collector/commit/fd4c11d674c80f725f221e9cf01611bf2489b4b0).
    
    #### Link to tracking issue
    Fixes #13930
    
    #### Testing
    
    I added a basic unit test in `internal/maplist`.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
