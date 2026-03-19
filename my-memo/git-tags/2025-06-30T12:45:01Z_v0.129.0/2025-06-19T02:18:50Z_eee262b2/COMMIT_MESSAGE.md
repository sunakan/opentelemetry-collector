commit eee262b24662d89e5d278759b81aed82aa19f05b
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Jun 18 19:18:50 2025 -0700

    [exporterhelper] Preserve client address in persistent queue (#13232)
    
    Preserve client address in persistent queue as part of the request
    context
    
    A follow-up to
    https://github.com/open-telemetry/opentelemetry-collector/pull/13220
