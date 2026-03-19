commit 4fbedf759cc269a25bf1a2a171408169bf873429
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Oct 24 10:16:28 2022 -0700

    [pdata] Rename p[trace|metric|log]otlp.ExportPartialSuccess (#6370)
    
    Rename `p[trace|metric|log]otlp.Export[Trace|Metrics|Logs]PartialSuccess` to `p[trace|metric|log]otlp.ExportPartialSuccess` for simplicity and consistency with Export[Request|Response]
    
    This doesn't need a deprecation because `p[trace|metric|log]otlp.Export[Trace|Metrics|Logs]PartialSuccess` is not released yet
