commit 241334609fc47927b4a8533dfca28e0f65dad9fe
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Mar 7 16:42:01 2024 -0800

    [exporterhelper] Introduce batching functionality (#8685)
    
    This change introduces new experimental batching functionality to the
    exporter helper. The batch sender is fully concurrent and synchronous.
    It's set after the queue sender, which, if enabled, introduces the
    asynchronous behavior and ensures no data loss with the permanent queue.
    
    Follow-up TODO list:
    - Add pre-built merge funcs for pdata
    - Handle partial errors
    - A missing part compared to the batch processor is the ability to shard
    the batches by context value.
    
    Updates
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
