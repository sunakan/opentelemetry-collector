commit 2b0decfcebebc88caa42123839d3e04bfa6dd802
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Mar 27 10:55:04 2024 -0600

    [receiver/otlp] Return proper http response code based on retryable errors (#9357)
    
    **Description:**
    Updates the receiver's http response to return a proper http status
    based on whether or not the pipeline returned a retryable error. Builds
    upon the work done in
    https://github.com/open-telemetry/opentelemetry-collector/pull/8080 and
    https://github.com/open-telemetry/opentelemetry-collector/pull/9307
    
    **Link to tracking Issue:**
    
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9337
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/8132
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9636
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/6725
    
    **Testing:**
    
    Updated lots of unit tests
