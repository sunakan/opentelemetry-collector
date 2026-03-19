commit 4f1a8936d26bac0932f1c3ea2c1be980614cc449
Author: Ankit Patel <8731662+ankitpatel96@users.noreply.github.com>
Date:   Thu Apr 4 08:11:16 2024 -0400

    Log when Environment Provider tries to pull unset or empty env var (#9837)
    
    **Description:**
    Creates a logger in the confmap.ProviderSettings and uses it to log when
    there is a missing or blank environment variable referenced in config.
    For now the noop logger is used everywhere except tests.
    
    **Link to tracking Issue:**
    [5615](https://github.com/open-telemetry/opentelemetry-collector/issues/5615)
    
    **Testing:**
    I wrote unit tests that ensured
    
    1. logging occurred when an environment variable was unset
    2. logging occcured when the env var was empty.
    3. there was no log when an env var was used correctly
    
    I also started the otel collector with the sample config - and added an
    env var reference in the sample config. I then inserted a print
    statement next to each log call to see whether my code paths were hit in
    the live application. I then went through the 3 cases mentioned above
    and ensured that logging behavior was accurate.
