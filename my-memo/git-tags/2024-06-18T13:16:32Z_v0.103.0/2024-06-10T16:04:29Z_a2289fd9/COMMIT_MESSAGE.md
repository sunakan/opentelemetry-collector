commit a2289fd9105bf0cc6a20820a7f262b1a475957ed
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Jun 10 09:04:29 2024 -0700

    [service] use mdatagen for service metrics (#10273)
    
    This reverts the reverts
    https://github.com/open-telemetry/opentelemetry-collector/pull/10271 and
    adds a mechanism to skip adding a create settings method for the service
    package component test. Will need to figure out if
    servicetelemetry.TelemetrySettings should be renamed to fit w/ the other
    CreateSettings structs before removing this check.
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
