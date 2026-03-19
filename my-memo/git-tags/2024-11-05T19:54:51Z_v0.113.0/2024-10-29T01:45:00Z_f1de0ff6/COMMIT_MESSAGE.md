commit f1de0ff6f4e0c6f7eaa6d1fb1b9231eb3fa38e16
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Mon Oct 28 18:45:00 2024 -0700

    [exporterqueue] Limited worker pool support for queue batcher (#11540)
    
    #### Description
    
    This PR follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/11532 and
    implements support for limited worker pool for queue batcher.
    
    Design doc:
    
    https://docs.google.com/document/d/1y5jt7bQ6HWt04MntF8CjUwMBBeNiJs2gV4uUZfJjAsE/edit?usp=sharing
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
