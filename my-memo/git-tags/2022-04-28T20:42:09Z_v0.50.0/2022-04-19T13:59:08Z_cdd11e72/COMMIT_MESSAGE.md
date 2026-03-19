commit cdd11e7228ea646dd6df9094ea7062f03563046a
Author: Stepan Rakitin <stepanr@mailbox.org>
Date:   Tue Apr 19 15:59:08 2022 +0200

    [exporter/otlp] Retry RESOURCE_EXHAUSTED only if the server returns RetryInfo (#5147)
    
    This makes us retry on`ResourceExhausted` only if retry info is provided. It also makes code a bit more explicit.
    
    In my case it caused an issue in production where upstream denied requests above `max_recv_msg_size` and we kept retrying.
    
    **Link to tracking Issue:**
    https://github.com/open-telemetry/opentelemetry-collector/issues/1123
