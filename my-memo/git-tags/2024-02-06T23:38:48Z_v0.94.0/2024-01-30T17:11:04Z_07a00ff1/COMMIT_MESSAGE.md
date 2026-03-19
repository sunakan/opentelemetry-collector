commit 07a00ff12434333f747bdca6fd7faf1b2d9f03ed
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jan 30 17:11:04 2024 +0000

    [service] Move TracerProvider initialization to service/telemetry package (#9384)
    
    Second redo of
    https://github.com/open-telemetry/opentelemetry-collector/pull/8171 that
    does not depend on
    https://github.com/open-telemetry/opentelemetry-collector/pull/9131
    
    Link to tracking Issue: Updates
    https://github.com/open-telemetry/opentelemetry-collector/issues/8170
    
    ---------
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
