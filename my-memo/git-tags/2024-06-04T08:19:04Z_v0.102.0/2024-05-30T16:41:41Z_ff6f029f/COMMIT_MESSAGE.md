commit ff6f029f99b30667823ea43547c099078c8f0211
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu May 30 09:41:41 2024 -0700

    [exporterhelper] Fix potential deadlocks in BatcherSender shutdown (#10258)
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10255
