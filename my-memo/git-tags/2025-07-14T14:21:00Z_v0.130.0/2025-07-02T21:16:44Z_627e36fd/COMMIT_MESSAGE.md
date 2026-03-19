commit 627e36fd4267a0349d137a39511df79a2fcd8dfa
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Wed Jul 2 14:16:44 2025 -0700

    [pdata] Add support for the new resource-entity references in xpdata (#13264)
    
    Add support for the new resource-entity reference API added to the proto
    as part of
    https://github.com/open-telemetry/opentelemetry-proto/pull/635.
    
    The API is separated into the experimental xpdata module since the new
    entity related protobuf definitions are in development
    
    This is the first step towards adopting Entities in Collector which was
    drafted in
    https://github.com/open-telemetry/opentelemetry-collector/pull/11958
