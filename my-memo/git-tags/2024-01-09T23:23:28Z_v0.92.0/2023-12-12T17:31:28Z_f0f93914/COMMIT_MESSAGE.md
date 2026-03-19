commit f0f93914b73c4ba317cf9712f2f69414868534fa
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Dec 12 09:31:28 2023 -0800

    [chore] [exporterhelper] Do not requeue on shutdown (#9054)
    
    This change unblocks adding the `enqueue_on_failure` option to the queue
    sender by removing the requeue behavior on the shutdown. If we don't
    remove requeue on shutdown, it's possible to run into a situation
    described in
    https://github.com/open-telemetry/opentelemetry-collector/issues/7388.
    After the recent refactoring, the chance of running into it is pretty
    small, but it's still possible.
    
    The only reason to requeue on shutdown is to make sure there is no data
    loss with the persistent queue enabled. The persistent queue captures
    all the inflight requests in the persistent storage anyway, so there is
    no reason to requeue an inflight request. The only downside is it
    potentially can cause sending duplicate data on the collector restart in
    case of a partially failed request during shutdown.
    
    Another option would be to rework the memory queue to never close the
    channel but still ensure draining.
