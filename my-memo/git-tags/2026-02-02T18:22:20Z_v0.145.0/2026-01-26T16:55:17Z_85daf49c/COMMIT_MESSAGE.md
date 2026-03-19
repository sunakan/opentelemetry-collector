commit 85daf49c69632452af6dad67c4f529e4ccf17d9a
Author: Dónal O'Sullivan <92297851+osullivandonal@users.noreply.github.com>
Date:   Mon Jan 26 16:55:17 2026 +0000

    [scraper/scraperhelper] Add scraper ID to error logs (#14461)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR adds the `scraperID` to the error logs for scrapers (metrics,
    logs, and profiles). Why is this important?
    
    Currently if an error occurs in any of the scrapers in
    `hostmetricsreceiver/internal/scraper/...` there is no info about the
    which scraper errored in the logs:
    
    ```bash
    2026-01-21T10:42:42.830Z        error   scraperhelper@v0.144.0/obs_metrics.go:61        Error scraping metrics  {"resource": {"service.instance.id": "63071771-056d-40ca-83e3-585dc1a00d57", "service.name": "otelcontribcol", "service.version": "0.144.0-dev"}, "otelcol.component.id": "hostmetrics", "otelcol.component.kind": "receiver", "otelcol.signal": "metrics", "error": "forced test error for scraper identification"}
    ```
    
    The update in this PR add's the scraper ID (In this case the memory
    scraper errored) to the logs which then gives us:
    
    ```bash
    2026-01-21T10:23:52.759Z        error   scraperhelper/obs_metrics.go:62 Error scraping metrics  {"resource": {"service.instance.id": "7137f19d-706f-4095-8367-0d68b2732402", "service.name": "otelcontribcol", "service.version": "0.144.0-dev"}, "otelcol.component.id": "hostmetrics", "otelcol.component.kind": "receiver", "otelcol.signal": "metrics", "scraper": "memory", "error": "forced test error for scraper identification"}
    ```
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes Issue in
    [collector-contrib](https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/35814#issuecomment-2676316294).
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    **Metrics scrapers:** Locally tested with `collector-contrib` by
    updating the mod file...
    **Logs scrapers:** The same pattern was applied. Logs scrapers (MySQL,
    PostgreSQL, Oracle, SQL Server receivers) require database connections
    for integration testing.
    **Profiles scrapers (xscraperhelper):** The same pattern was applied.
    Note: There are currently no profiles scrapers in collector-contrib to
    test against.
    
    **Metrics scraper local test**: Locally this was updated and included in
    the `collector-contrib` via updating the mod file. An error was forced
    in the `hostmetricsreceiver/internal/scraper/...` both memory and cpu,
    we can now see which scraper component had an error:
    
    ```bash
    2026-01-21T11:51:34.176Z        error   scraperhelper/obs_metrics.go:61 Error scraping metrics  {"resource": {"service.instance.id": "e6832705-bc54-43dd-9b1f-0c06d58b7ead", "service.name": "otelcontribcol", "service.version": "0.144.0-dev"}, "otelcol.component.id": "hostmetrics", "otelcol.component.kind": "receiver", "otelcol.signal": "metrics", "scraper": "memory", "error": "forced test error for scraper identification"}
    go.opentelemetry.io/collector/scraper/scraperhelper.wrapObsMetrics.func1
            /home/dos/Documents/opentelemetry-collector/scraper/scraperhelper/obs_metrics.go:61
    go.opentelemetry.io/collector/scraper.ScrapeMetricsFunc.ScrapeMetrics
            /home/dos/go/pkg/mod/go.opentelemetry.io/collector/scraper@v0.144.0/metrics.go:24
    go.opentelemetry.io/collector/scraper/scraperhelper.scrapeMetrics
            /home/dos/Documents/opentelemetry-collector/scraper/scraperhelper/controller.go:167
    go.opentelemetry.io/collector/scraper/scraperhelper.NewMetricsController.func1
            /home/dos/Documents/opentelemetry-collector/scraper/scraperhelper/controller.go:139
    go.opentelemetry.io/collector/scraper/scraperhelper/internal/controller.(*Controller[...]).startScraping.func1
            /home/dos/Documents/opentelemetry-collector/scraper/scraperhelper/internal/controller/controller.go:118
    2026-01-21T11:51:34.177Z        error   scraperhelper/obs_metrics.go:61 Error scraping metrics  {"resource": {"service.instance.id": "e6832705-bc54-43dd-9b1f-0c06d58b7ead", "service.name": "otelcontribcol", "service.version": "0.144.0-dev"}, "otelcol.component.id": "hostmetrics", "otelcol.component.kind": "receiver", "otelcol.signal": "metrics", "scraper": "cpu", "error": "forced test error for scraper identification"}
    go.opentelemetry.io/collector/scraper/scraperhelper.wrapObsMetrics.func1
            /home/dos/Documents/opentelemetry-collector/scraper/scraperhelper/obs_metrics.go:61
    go.opentelemetry.io/collector/scraper.ScrapeMetricsFunc.ScrapeMetrics
            /home/dos/go/pkg/mod/go.opentelemetry.io/collector/scraper@v0.144.0/metrics.go:24
    go.opentelemetry.io/collector/scraper/scraperhelper.scrapeMetrics
            /home/dos/Documents/opentelemetry-collector/scraper/scraperhelper/controller.go:167
    go.opentelemetry.io/collector/scraper/scraperhelper.NewMetricsController.func1
            /home/dos/Documents/opentelemetry-collector/scraper/scraperhelper/controller.go:139
    go.opentelemetry.io/collector/scraper/scraperhelper/internal/controller.(*Controller[...]).startScraping.func1
            /home/dos/Documents/opentelemetry-collector/scraper/scraperhelper/internal/controller/controller.go:118
    2026-01-21T11:51:34.199Z        info    Metrics {"resource": {"service.instance.id": "e6832705-bc54-43dd-9b1f-0c06d58b7ead", "service.name": "otelcontribcol", "service.version": "0.144.0-dev"}, "otelcol.component.id": "debug", "otelcol.component.kind": "exporter", "otelcol.signal": "metrics", "resource metrics": 1, "metrics": 1, "data points": 1}
    2026-01-21T11:51:34.199Z        info    ResourceMetrics #0
    Resource SchemaURL: https://opentelemetry.io/schemas/1.9.0
    
    ```
    
    Closes
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/35814
