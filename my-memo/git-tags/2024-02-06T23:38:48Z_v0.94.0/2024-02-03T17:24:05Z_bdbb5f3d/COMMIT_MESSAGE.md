commit bdbb5f3d513e361d3895f2b313561913ac737f33
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sat Feb 3 09:24:05 2024 -0800

    [exporterhelper] Add WithRequestQueue option to the exporter (#8853)
    
    Introduce a way to enable queue in the new exporter helper with a
    developer interface suggested in
    https://github.com/open-telemetry/opentelemetry-collector/pull/8248#discussion_r1302102261.
    
    The new configuration interface for the end users provides a new
    `queue_size_items` option to limit the queue by a number of spans, log
    records, or metric data points. The previous way to limit the queue by
    number of requests is preserved under the same field, `queue_size,`
    which will later be deprecated through a longer transition process.
    
    Tracking issue:
    https://github.com/open-telemetry/opentelemetry-collector/issues/8122
