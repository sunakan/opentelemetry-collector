commit 4e9e94bdb49140cb904a30c99fb454f7a36f561d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu Nov 9 07:42:32 2023 -0800

    [chore] [exporterhelper] Ensure TestQueuedRetry_DropOnFull doesn't panic (#8832)
    
    Make the imitation of queue overflow more reliable to make the test pass
    in https://github.com/open-telemetry/opentelemetry-collector/pull/8829
