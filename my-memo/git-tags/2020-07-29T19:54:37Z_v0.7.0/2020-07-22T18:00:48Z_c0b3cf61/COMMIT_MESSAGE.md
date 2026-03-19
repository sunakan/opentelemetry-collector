commit c0b3cf61a63a0aa323f7a188c65458d6fb518e3b
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Jul 22 11:00:48 2020 -0700

    Fix resource processor for old metrics (#1412)
    
    Need to wrap metric before sending out from resource processor, wrapping was lost during this change https://github.com/open-telemetry/opentelemetry-collector/commit/afc47961e03ef146922151a7006e9f9c4fbf8efc
