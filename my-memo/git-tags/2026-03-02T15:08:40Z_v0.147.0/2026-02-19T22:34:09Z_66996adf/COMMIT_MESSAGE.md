commit 66996adfaaf7613ad2865f1079027bf8edb2ec30
Author: Dónal O'Sullivan <92297851+osullivandonal@users.noreply.github.com>
Date:   Thu Feb 19 22:34:09 2026 +0000

    [mdatagen] Fix semconv URL validation for metrics with underscores (#14584)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Currently in mdatagen if you use a url for the semantic_convention: ref:
    key with a underscore in the anchor tag, mdatagen generate fails.
    Underscores in the anchor tag of the url is valid for exmaple in
    [system.disk.io_time](https://github.com/open-telemetry/semantic-conventions/blob/v1.38.0/docs/system/system-metrics.md#metric-systemdiskio_time)
    the anchor tag has: `metric-systemdiskio_time`. The underscore causes an
    error at generation time.
    
    Example, in otel-collector-contrib hostmetricsreceiver `metadata.yaml`
    with `semantic_convention` key:
    
    ```yaml
      system.disk.io_time:
        enabled: true
        description: Time disk spent activated. On Windows, this is calculated as the inverse of disk idle time.
        unit: s
        stability: development
        sum:
          value_type: double
          aggregation_temporality: cumulative
          monotonic: true
        attributes: [device]
        semantic_convention:
          ref: https://github.com/open-telemetry/semantic-conventions/blob/v1.38.0/docs/system/system-metrics.md#metric-systemdiskio_time
    ```
    
    When running `make generate` we see this error:
    
    ```bash
    …/receiver/hostmetricsreceiver main  ❯ make generate
    cd /home/dos/Documents/opentelemetry-collector-contrib/internal/tools && GOOS="" GOARCH="" go build -o /home/dos/Documents/opentelemetry-collector-contrib/.tools/genqlient -trimpath github.com/Khan/genqlient
    PATH="/home/dos/Documents/opentelemetry-collector-contrib/.tools:$PATH" go generate ./...
    make[1]: Entering directory '/home/dos/Documents/opentelemetry-collector-contrib/receiver/hostmetricsreceiver'
    make[1]: Leaving directory '/home/dos/Documents/opentelemetry-collector-contrib/receiver/hostmetricsreceiver'
    make[1]: Entering directory '/home/dos/Documents/opentelemetry-collector-contrib/receiver/hostmetricsreceiver/internal/scraper/cpuscraper'
    make[1]: Leaving directory '/home/dos/Documents/opentelemetry-collector-contrib/receiver/hostmetricsreceiver/internal/scraper/cpuscraper'
    make[1]: Entering directory '/home/dos/Documents/opentelemetry-collector-contrib/receiver/hostmetricsreceiver/internal/scraper/diskscraper'
    Error: failed loading /home/dos/Documents/opentelemetry-collector-contrib/receiver/hostmetricsreceiver/internal/scraper/diskscraper/metadata.yaml: metric "system.disk.io_time": invalid semantic-conventions URL: want https://github.com/open-telemetry/semantic-conventions/blob/v1.38.0/*#metric-systemdiskiotime, got "https://github.com/open-telemetry/semantic-conventions/blob/v1.38.0/docs/system/system-metrics.md#metric-systemdiskio_time"
    Error: failed loading /home/dos/Documents/opentelemetry-collector-contrib/receiver/hostmetricsreceiver/internal/scraper/diskscraper/metadata.yaml: metric "system.disk.io_time": invalid semantic-conventions URL: want https://github.com/open-telemetry/semantic-conventions/blob/v1.38.0/*#metric-systemdiskiotime, got "https://github.com/open-telemetry/semantic-conventions/blob/v1.38.0/docs/system/system-metrics.md#metric-systemdiskio_time"
    make[1]: *** [../../../../../Makefile.Common:264: mdatagen] Error 1
    make[1]: Leaving directory '/home/dos/Documents/opentelemetry-collector-contrib/receiver/hostmetricsreceiver/internal/scraper/diskscraper'
    internal/scraper/diskscraper/doc.go:4: running "make": exit status 2
    ```
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #14583
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    - We can test this out in otel-collector-contrib via updating the
    `tools` to use this branch locally, for example:
    
    - In opentelemetry-collector-contrib/internal/tools/go.mod:
    
    ```golang
    replace go.opentelemetry.io/collector/cmd/mdatagen => /home/dos/Documents/opentelemetry-collector/cmd/mdatagen
    ```
    
    - Run `go mod tidy`.
    
    - Update metadata for the
    [receiver/hostmetricsreceiver/internal/scraper/diskscraper/metadata.yaml](https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/a810b2d6fd4bc738e4570243409dce3fb148a5b7/receiver/hostmetricsreceiver/internal/scraper/diskscraper/metadata.yaml?plain=1#L35)
    with the semantic_convention ref:
    
    ```yaml
      system.disk.io_time:
        enabled: true
        description: Time disk spent activated. On Windows, this is calculated as the inverse of disk idle time.
        unit: s
        stability: development
        sum:
          value_type: double
          aggregation_temporality: cumulative
          monotonic: true
        attributes: [device]
        semantic_convention:
          ref: https://github.com/open-telemetry/semantic-conventions/blob/v1.38.0/docs/system/system-metrics.md#metric-systemdiskio_time
    ```
    ##### Unit-Tests
    
    A unit test has been added to `loader_test.go` that uses the test file:
    `with_underscore_in_semconv_ref_anchor_tag.yaml`.
    
    This test has the underscore in the anchor tag and will fail if the
    regex filters out the underscore.
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
