commit dc113664f4ac5ab79b313ede3402a1ae04e0c2ae
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Thu Jan 16 21:22:12 2020 +0530

    Fixed opentelemetry-collector dep version in testbed (#504)
    
    Previous version string was invalid and couldn't be used in contrib.
    
    It resulted in the following error:
    
    ```
    go: github.com/open-telemetry/opentelemetry-collector-contrib/testbed@v0.0.0-20200113165313-aaaf81577e1a requires
            github.com/open-telemetry/opentelemetry-collector/testbed@v0.0.0-20200110193345-9f801c5b8d9f requires
            github.com/open-telemetry/opentelemetry-collector@v0.2.0-0.20200110151913-9777072f35b3: invalid pseudo-version: version before v0.2.0 would have negative patch number
    Add License finished successfully
    Fmt finished successfully
    go: github.com/open-telemetry/opentelemetry-collector-contrib/testbed@v0.0.0-20200113165313-aaaf81577e1a requires
            github.com/open-telemetry/opentelemetry-collector/testbed@v0.0.0-20200110193345-9f801c5b8d9f requires
            github.com/open-telemetry/opentelemetry-collector@v0.2.0-0.20200110151913-9777072f35b3: invalid pseudo-version: version before v0.2.0 would have negative patch number
    make: *** [vet] Error 1
    ```
