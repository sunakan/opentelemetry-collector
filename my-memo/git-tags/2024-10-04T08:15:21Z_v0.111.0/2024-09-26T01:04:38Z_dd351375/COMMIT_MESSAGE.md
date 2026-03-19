commit dd351375458072fe29594f99a2eb8cbd9d7b6b1f
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Wed Sep 25 18:04:38 2024 -0700

    [exporter] [chore] Initialize batchSender and queueSender after configuration - #2 (#11240)
    
    This PR follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/11041.
    
    The previous PR changed the initialization of `batchSender` and
    `queueSender` to AFTER configuration, because that enables us to access
    `queueConfig` and `batcherConfig` in the same place.
    
    I noticed since then that there is another API for queue configuration,
    and this PR takes care of that other API
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/10368
    
    #### Testing
    
    Ran `opentelemetry-collector$ make` to make sure all tests still pass.
