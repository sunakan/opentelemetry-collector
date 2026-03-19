commit 55a8c6b6519c876674212eda53a09a10def40e03
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Jan 12 18:18:19 2024 -0800

    [exporterhelper] Cleanup logging for export failures (#9282)
    
    This change makes the logging of the exported error failures cleaner.
    1. Ensure an error message is logged every time and only once when data
    is dropped/rejected due to export failure.
    2. Update the wording. Specifically, don't use "dropped" term when an
    error is reported back to the pipeline. If there is no queue configured,
    the exporter doesn't drop data by itself but rather rejects it. Keep the
    "dropped" wording for failures after the enabled queue.
    3. Properly report any error reported by a queue. For example, a
    persistent storage error must be reported as a storage error, not as
    "queue overflow".
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9219
