commit b328e13aa47fca552884d92e6f488a9a7b8afbb4
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Aug 2 10:52:14 2021 -0700

    receiver/prometheus: use actual interval startTimeMs for cumulative types (#3694)
    
    With this change, we now infer the actual interval startTime
    for cumulative types from the original starttime interval reinforcing
    what the OpenTelemetry Proto recommendations say in
    https://github.com/open-telemetry/opentelemetry-proto/blob/bc8ee79d8e01faf3310af2987268e94285f354da/opentelemetry/proto/metrics/v1/metrics.proto#L132-L140
    
    Fixes #3691
