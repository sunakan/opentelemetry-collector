commit cc72c2dce06d9489755c1b01e2ed2bcc08209518
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Jun 4 09:45:37 2024 -0700

    [exporterhelper] Fix batch sender ignoring next senders in the chain (#10287)
    
    This change fixes a bug when the retry and timeout logic was not applied
    with enabled batching. The batch sender was ignoring the next senders in
    the chain.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10166
