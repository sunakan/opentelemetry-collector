commit 01740955d7249ea6c331ed663bf3736b74fecb26
Author: Dylan Myers <Dylan-M@users.noreply.github.com>
Date:   Thu Mar 13 04:41:11 2025 -0400

    Fix process metrics disable (#12615)
    
    #### Description
    Process registration protection for telemetry level being set to "None"
    
    #### Link to tracking issue
    Fixes #12098
    
    #### Testing
    Manual testing on an AIX 7.3 system rented from SiteOx:
    
    ```
    -bash-5.2# ./otelcorecol_aix_ppc64 --config ./example.yaml
    2025-03-11T16:52:04.318-0500    info    service@v0.121.0/service.go:193 Setting up own telemetry...
    2025-03-11T16:52:04.318-0500    info    service@v0.121.0/service.go:238 Skipped telemetry setup.
    2025-03-11T16:52:04.318-0500    info    service@v0.121.0/service.go:260 Starting otelcorecol... {"Version": "0.121.0-dev", "NumCPU": 8}
    2025-03-11T16:52:04.319-0500    info    extensions/extensions.go:40     Starting extensions...
    2025-03-11T16:52:04.319-0500    info    service@v0.121.0/service.go:283 Everything is ready. Begin running and processing data.
    2025-03-11T16:52:13.786-0500  info    otelcol@v0.121.0/collector.go:342       Received signal from OS {"signal": "interrupt"}
    2025-03-11T16:52:13.786-0500    info    service@v0.121.0/service.go:325 Starting shutdown...
    2025-03-11T16:52:13.786-0500    info    extensions/extensions.go:68     Stopping extensions...
    2025-03-11T16:52:13.786-0500    info    service@v0.121.0/service.go:339 Shutdown complete.
    ```
