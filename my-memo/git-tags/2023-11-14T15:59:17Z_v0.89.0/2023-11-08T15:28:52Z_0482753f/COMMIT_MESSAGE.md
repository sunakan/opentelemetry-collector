commit 0482753f5203952be14d07be0cd4a45a571d47ec
Author: Curtis Robert <crobert@splunk.com>
Date:   Wed Nov 8 07:28:52 2023 -0800

    [chore][exporter/exporterhelper] Clarifications in README (#8815)
    
    **Description:**
    Minor clarifications in the README.
    
    1. The [batch processor's
    option](https://github.com/open-telemetry/opentelemetry-collector/blob/8bea0d372c9965a99dd88d1f5c4c4b7acee9db40/processor/batchprocessor/config.go#L24)
    is named `send_batch_size`, not `batch_send_size`.
    2. It may be obvious but I didn't instantly realize the sending queue is
    one or the other (in-memory or persistent). This adds a comment to make
    it clear.
    
    For reference, I'm adding this as a result of investigation for this
    issue:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/29006
