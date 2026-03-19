commit 8b79380c1eff5925a3f576cef416d85ac718e253
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Jul 8 16:40:30 2021 -0700

    receiver/prometheus: glue and complete staleness marking for disappearing metrics (#3423)
    
    Adds the staleness store to the metricsBuilder and transaction to track when metrics
    disappear between scrapes.
    
    Depends on https://github.com/open-telemetry/opentelemetry-collector/pull/3414
    Fixes #3413
    Fixes #2961
