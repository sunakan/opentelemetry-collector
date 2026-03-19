commit ecd837e5969bb06a4930cea240250bc4f82a47df
Author: Ben B <bongartz@klimlive.de>
Date:   Fri Nov 3 20:52:30 2023 +0100

    Fix featuregate late initialization (#8478)
    
    The factories for the components are created before the CLI flags are
    evaluated. Therefore, featuregate flags are ignored during the early
    startup phase.
    ~This PR simply shifts the time of creation of the factory map after the
    CLI flag evaluation.~
    
    Closes https://github.com/open-telemetry/opentelemetry-collector/issues/4967
    
    **Testing:**
    Short manual testing via cli. Adding the following line in
    `cobra.Command.RunE`.
    ```golang
    featuregate.GlobalRegistry().VisitAll(func(fg *featuregate.Gate) { fmt.Println(fg.ID(), fg.IsEnabled()) })
    ```
    Changing `+` & `-`:
    ```bash
    ./bin/otelcorecol_linux_amd64 --config=config.yaml --feature-gates=+telemetry.disableHighCardinalityMetrics
    ```
    
    ---------
    
    Signed-off-by: Benedikt Bongartz <bongartz@klimlive.de>
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: Alex Boten <aboten@lightstep.com>
