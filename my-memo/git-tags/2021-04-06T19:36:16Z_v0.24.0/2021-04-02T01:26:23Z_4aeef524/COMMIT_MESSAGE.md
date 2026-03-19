commit 4aeef524e8681ad9b00c00adf68deb567ca3fd98
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Apr 1 18:26:23 2021 -0700

    Report metric about current size of the exporter retry queue (#2858)
    
    This commit adds observability to queue_retry exporter helper. It adds the first metric "queue_length" that indicates current size of the queue per exporter. The metrics is updated every second.
    
    This is the first commit to address the issue https://github.com/open-telemetry/opentelemetry-collector/issues/2434
