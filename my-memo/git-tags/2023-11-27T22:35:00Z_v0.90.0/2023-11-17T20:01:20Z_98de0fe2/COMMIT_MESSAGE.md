commit 98de0fe254ffdb665646d530b4ce2aa4bbdcfdb0
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Nov 17 12:01:20 2023 -0800

    [chore] [exporterhelper] Merge persistent_queue and persistent_storage files (#8952)
    
    After the persistentStorage is consolidated persistentQueue, there is no
    reason to separate code in separate files.
    
    Just moving code around, no functional changes. For now, just moving
    small parts it to `persistent_storage` file, which will renamed after to
    `persistent_queue` to preserve the git blame history,
    
    Part of splitting
    https://github.com/open-telemetry/opentelemetry-collector/pull/8923
