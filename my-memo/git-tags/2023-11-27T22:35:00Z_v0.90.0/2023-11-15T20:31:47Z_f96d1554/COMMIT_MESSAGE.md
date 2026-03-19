commit f96d1554b515a6ff8df1b9cfdef2abac29c2f529
Author: Andrzej Stencel <astencel@sumologic.com>
Date:   Wed Nov 15 21:31:47 2023 +0100

    [exporter/debug] change default verbosity from `normal` to `basic` (#8846)
    
    This change has currently no effect, as `basic` and `normal` verbosity
    share the same behavior. This might change in the future though, with
    the `normal` verbosity being more verbose than it currently is (see
    https://github.com/open-telemetry/opentelemetry-collector/issues/7806).
    This is why we are changing the default to `basic`, which is expected to
    stay at the current level of verbosity (one line per batch).
    
    **Link to tracking Issue:**
    
    - https://github.com/open-telemetry/opentelemetry-collector/issues/8844
