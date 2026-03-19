commit 7030388dde3f765af60cf8431ea54340194d9f18
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Aug 30 15:30:03 2023 -0700

    [chore] [exporterhelper] Refactor queue initialization (#8284)
    
    Make the queue initialization process consistent for both queue types.
    Instead of having different workflows for memory and persistent queues,
    this change breaks the initialization of both into two generic steps:
    1. Queue factory: `NewBoundedMemoryQueue`, `NewPersistentQueue`
    2. Start method: `queue.Start(context.Context, component.Host,
    QueueSettings)`
    
    This change:
    - reduces coupling between `queuedRetrySender` and the queues;
    - allows future refactoring of `queuedRetrySender`;
    - allows future extraction of the queue package from the exporterhelper;
    - makes it possible to have `WithRequestQueue` option for the new
    exporter helper API as drafted in
    https://github.com/open-telemetry/opentelemetry-collector/pull/8275.
