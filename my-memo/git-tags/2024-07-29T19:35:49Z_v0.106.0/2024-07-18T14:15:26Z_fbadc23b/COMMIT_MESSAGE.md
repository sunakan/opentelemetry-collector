commit fbadc23b71b350343226c7d707fc7d843c05650d
Author: Mikołaj Świątek <mail@mikolajswiatek.com>
Date:   Thu Jul 18 14:15:26 2024 +0000

    Improve logging of component start errors (#10440)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Improved logging of component start errors, so the log lines appear
    where they chronologically happen, rather than at the end. They also use
    the component logger, which makes them look nicer.
    
    Output before change:
    ```text
    2024-06-19T14:15:30.822+0200    info    service@v0.103.0/service.go:115 Setting up own telemetry...
    2024-06-19T14:15:30.822+0200    info    service@v0.103.0/telemetry.go:96        Serving metrics {"address": ":8888", "level": "Normal"}
    2024-06-19T14:15:30.823+0200    info    service@v0.103.0/service.go:182 Starting otelcorecol... {"Version": "0.103.0-dev", "NumCPU": 32}
    2024-06-19T14:15:30.823+0200    info    extensions/extensions.go:35     Starting extensions...
    2024-06-19T14:15:30.823+0200    info    service@v0.103.0/service.go:245 Starting shutdown...
    2024-06-19T14:15:30.823+0200    info    extensions/extensions.go:61     Stopping extensions...
    2024-06-19T14:15:30.823+0200    info    service@v0.103.0/service.go:259 Shutdown complete.
    Error: cannot start pipelines: failed to resolve authenticator "oauth2client": authenticator not found
    2024/06/19 14:15:30 collector server run finished with error: cannot start pipelines: failed to resolve authenticator "oauth2client": authenticator not found
    ```
    
    Output after change:
    ```
    2024-06-19T14:25:18.324+0200    info    service@v0.103.0/service.go:115 Setting up own telemetry...
    2024-06-19T14:25:18.325+0200    info    service@v0.103.0/telemetry.go:96        Serving metrics {"address": ":8888", "level": "Normal"}
    2024-06-19T14:25:18.326+0200    info    service@v0.103.0/service.go:182 Starting otelcorecol... {"Version": "0.103.0-dev", "NumCPU": 32}
    2024-06-19T14:25:18.326+0200    info    extensions/extensions.go:35     Starting extensions...
    2024-06-19T14:25:18.326+0200    error   graph/graph.go:428      Failed to start component       {"error": "failed to resolve authenticator \"oauth2client\": authenticator not found", "type": "Exporter", "id": "otlphttp"}
    2024-06-19T14:25:18.326+0200    info    service@v0.103.0/service.go:245 Starting shutdown...
    2024-06-19T14:25:18.326+0200    info    extensions/extensions.go:61     Stopping extensions...
    2024-06-19T14:25:18.326+0200    info    service@v0.103.0/service.go:259 Shutdown complete.
    Error: cannot start pipelines: failed to resolve authenticator "oauth2client": authenticator not found
    2024/06/19 14:25:18 collector server run finished with error: cannot start pipelines: failed to resolve authenticator "oauth2client": authenticator not found
    
    ```
    
    We've added the following line:
    ```
    2024-06-19T14:25:18.326+0200    error   graph/graph.go:428      Failed to start component       {"error": "failed to resolve authenticator \"oauth2client\": authenticator not found", "type": "Exporter", "id": "otlphttp"}
    ```
    
    For extensions, the new line looks like so:
    ```
    2024-06-25T16:59:18.513+0200    error    extensions/extensions.go:54     Failed to start extension      {"kind": "extension", "name": "memory_limiter", "error": "failed to get memory limit"}
    ```
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #7078
