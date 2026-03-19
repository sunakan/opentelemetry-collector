commit a26bc46c600af7d2c962847a39a0fe2ecf0697cf
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Nov 14 17:53:08 2024 +0100

    [chore] Run `make genotelcorecol` to fix "build-and-test / checks" (#11676)
    
    #### Description
    
    The "build-and-test / checks" CI job specifies `go-version: ~1.22.8`.
    Today, this started resolving to `1.22.9`, causing [errors in
    CI](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/11839445874/job/32990922879?pr=11670)
    because of the `toolchain 1.22.8` directive in `otelcorecol/go.mod`.
    This PR just updates the directive to fix the error. A more long-term
    solution may be preferred, such as using exact versions instead of `~`
    versions in CI.
