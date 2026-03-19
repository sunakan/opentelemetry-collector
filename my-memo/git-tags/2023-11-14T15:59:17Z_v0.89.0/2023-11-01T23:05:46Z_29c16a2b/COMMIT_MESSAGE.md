commit 29c16a2bca80809d41be31770931ab2f9c2b065b
Author: David Ashpole <dashpole@google.com>
Date:   Wed Nov 1 19:05:46 2023 -0400

    Log errors even when retry_on_failure is not used (#8792)
    
    **Description:**
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/8791.
    Logging errors normally happens in the retry exporter helper if
    retry_on_failure is disabled:
    
    
    https://github.com/open-telemetry/opentelemetry-collector/blob/66166c4cc371fbe945d7ff19232decd3ee65f76a/exporter/exporterhelper/retry_sender.go#L108-L115
    
    When WithRetry is not specified in the component, no logging happens at
    all. This change makes the "base" retry sender log errors, so that if a
    component does not specify WithRetry, it still has errors logged,
    similar to the behavior with disabled retry.
