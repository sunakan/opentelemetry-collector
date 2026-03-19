commit c8d26becdaf0a11d354bc422eec7483260387744
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Feb 5 13:01:20 2025 +0100

    Remove `configauth` default, use nil in `configgrpc` default (#12271)
    
    #### Context
    
    The `configauth.NewDefaultAuthentication` returns a zero-initialized
    `Authentication` value
    ([link](https://github.com/open-telemetry/opentelemetry-collector/blob/477e4d3959932234e71f4e68c9d4e2290015a1df/config/configauth/configauth.go#L25)),
    which is used in `configgrpc.NewDefaultClientConfig`
    ([link](https://github.com/open-telemetry/opentelemetry-collector/blob/477e4d3959932234e71f4e68c9d4e2290015a1df/config/configgrpc/configgrpc.go#L109))
    and `configgrpc.NewDefaultServerConfig`
    ([link](https://github.com/open-telemetry/opentelemetry-collector/blob/477e4d3959932234e71f4e68c9d4e2290015a1df/config/configgrpc/configgrpc.go#L196)).
    However, this default value is problematic, as it will cause the
    Collector to crash on startup with the error `Error: cannot start
    pipelines: failed to resolve authenticator "": authenticator not found`.
    
    There is no way for the `Authentication` struct to represent "no
    authentication" (which is presumably the intended default). The
    `configgrpc` code uses a `nil` `*Authentication` pointer to represent
    that case
    ([link](https://github.com/open-telemetry/opentelemetry-collector/blob/477e4d3959932234e71f4e68c9d4e2290015a1df/config/configgrpc/configgrpc.go#L310)).
    
    Regarding the use of these APIs:
    - Across Github, it looks like `configauth.NewDefaultAuthentication` is
    not used outside of `configgrpc`.
    - I haven't found any use of `configgrpc.NewDefaultServerConfig` on
    Github, and `configgrpc.NewDefaultClientConfig` has [one use in the
    Elastic OTel components
    repo](https://github.com/elastic/opentelemetry-collector-components/blob/3cfc4ac3a58e5ac9823bf2ccc966e2f306cff5c9/processor/ratelimitprocessor/config.go#L164),
    although I suspect the `Auth` field may get overriden anyway, so the
    crash may never actually occur.
    - It looks like the gRPC receivers/exporters in Core build their default
    `ClientConfig`/`ServerConfig` manually instead of using those functions,
    leaving the `Auth` field `nil`, which is why the crash does not occur
    there either.
    
    #### Description
    
    This PR:
    - Removes `configauth.NewDefaultAuthentication` since there doesn't seem
    to be a useful "default" value for this struct. Because it doesn't seem
    to be used outside this repo, I decided to skip the deprecation step.
    - Replaces its use in
    `configgrpc.NewDefaultClient/NewDefaultServerConfig` by `nil`. I think
    this would be considered a bug fix rather than a breaking change, since
    the current value causes an error if not overriden.
    
    #### Link to tracking issue
    Resolves #12223 (the original issue was about making the function
    signature more consistent, but removing the function entirely makes it
    no longer an issue I would say)
    
    #### Testing
    I experimentally confirmed that the above crash occurs with default
    config if we change the OTLP receiver's `createDefaultConfig` to use
    `configgrpc.NewDefaultServerConfig`, and that the above fix to said
    function prevents the crash.
