commit 8b9fe07e6495cd04d6c09033def87e539af10c18
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Jun 10 13:06:16 2020 -0700

    Do not duplicate span kind in span.kind attribute in jaeger receivers (#1100)
    
    Since OTLP span kinds has 1-1 mapping with OpenTracing specification we don't need to keep additional "span.kind" value as was done in OC internal representation.
    
    The commit fixes the issue: https://github.com/open-telemetry/opentelemetry-collector/issues/878
