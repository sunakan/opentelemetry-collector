commit 14ae2173ee0c7528edda153bca2161b180d0a68f
Author: Pavol Loffay <ploffay@redhat.com>
Date:   Tue May 26 18:25:43 2020 +0200

    Unify log message when exporter or receiver is not registered (#1018)
    
    Resolves: https://github.com/jaegertracing/jaeger/issues/2252
    Related to https://github.com/open-telemetry/opentelemetry-collector/issues/294
    
    Just fixing the log message. The warn level was printing stacktrace what was confusing for users.
