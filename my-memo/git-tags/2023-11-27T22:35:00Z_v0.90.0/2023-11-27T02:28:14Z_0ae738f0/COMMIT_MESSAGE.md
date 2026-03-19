commit 0ae738f0c8eebf669967cd1bdda5072929df4b9d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sun Nov 26 18:28:14 2023 -0800

    [chore] [exporterhelper] Fix requeuing of partially failed request (#8992)
    
    After
    https://github.com/open-telemetry/opentelemetry-collector/pull/8985, the
    whole request is requeued even with the partial request error. This
    change fixes it and restores the previous behavior. No changelog is
    needed since the bug is not released yet.
