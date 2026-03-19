commit 4046234701ae1a17cbfa428a86cf5b239f68cd74
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Jul 17 14:07:03 2020 -0700

    Add support for queued retry in the exporter helper. (#1386)
    
    * Add support for queued retry in the exporter helper.
    
    Changed only the OTLP exporter for the moment to use the new settings.
    
    Timeout is enabled for all the exporters. Fixes #1193
    
    There are some missing features that will be added in a followup PR:
    1. Enforcing errors. For the moment added the Throttle error as a hack to keep backwards compatibility with OTLP.
    2. Enable queued and retry for all exporters.
    3. Fix observability metrics for the case when requests are dropped because the queue is full.
    
    * First round of comments addressed
