commit 808e256296b60a532076a9321c49b189fce12cdd
Author: Dylan Myers <Dylan-M@users.noreply.github.com>
Date:   Tue Feb 4 09:21:16 2025 -0500

    Add AIX/ppc64 to CI builds (#12261)
    
    #### Description
    As a first step in elevating AIX to Tier 3 support, this PR adds AIX to
    the array of things built whenever a PR is made against main.
    
    #### Link to tracking issue
    Related to #12098, but does not fix the underlying issue.
    
    #### Testing
    This is purely adding to the CI.
    The only testing done is confirming that the build will work:
    ```
    $ CGO_ENABLED=0 GOOS="aix" GOARCH="ppc64" go build -trimpath -o ../../bin/otelcorecol_aix_ppc64
    ✔ ~/git/opentelemetry-collector/cmd/otelcorecol [aix_ci_builds|✔]
    ```
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
