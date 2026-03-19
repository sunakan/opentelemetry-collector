commit 0daa81380d6edb7e7966e5a9f2ffd1f2c0ca1ac8
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed Oct 23 10:13:58 2024 -0700

    [service] add logger provider configuration support (#10544)
    
    This allows us to use the otel-go/config package to support configuring
    external destinations for logs. I'm putting this in draft to gather
    community feedback on whether this is a desirable feature for the
    collector.
    
    I used the following configuration with this PR to send data to an OTLP
    backend:
    
    ```yaml
    telemetry:
       logs:
         processors:
           - batch:
               exporter:
                 otlp:
                   protocol: http/protobuf
                   endpoint: https://api.honeycomb.io:443
                   headers:
                     "x-honeycomb-team": "${env:HONEYCOMB_API_KEY}"
    ```
    
    This allowed me to see logs in my backend:
    
    ![Screenshot 2024-07-04 at 1 49
    04 PM](https://github.com/open-telemetry/opentelemetry-collector/assets/223565/bba7c82a-e9f9-4b15-933a-6bb3e7a66bb8)
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
