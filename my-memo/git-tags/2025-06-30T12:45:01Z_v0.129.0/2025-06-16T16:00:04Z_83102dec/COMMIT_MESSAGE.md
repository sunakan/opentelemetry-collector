commit 83102decdfb162a3b2cbd029d521a46a1431f873
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Jun 16 18:00:04 2025 +0200

    Use full TracerProvider config from otelconf (#13201)
    
    #### Description
    
    This PR changes the config struct corresponding to
    `service::telemetry::traces` to embed the full `TracerProvider` config
    struct from `otelconf`, instead of including only its `Processors`
    field.
    
    Something similar was previously done for the `MeterProvider` struct in
    #12433.
    
    This has the effect of letting users enable sampling on internal
    Collector traces using [the `sampler` section of the declarative
    config](https://github.com/open-telemetry/opentelemetry-configuration/blob/9c8ff31553a6a48c09fe99a288596e28b63c4cdb/examples/kitchen-sink.yaml#L294).
    
    #### Link to tracking issue
    I couldn't find any relevant issue.
    
    #### Testing
    I added a basic example of using the `sampler` to
    `service/telemetry/internal/migration/testdata/v0.3.0_traces.yaml` to
    test that we can unmarshal this section properly.
    
    #### Documentation
    Just a changelog.
