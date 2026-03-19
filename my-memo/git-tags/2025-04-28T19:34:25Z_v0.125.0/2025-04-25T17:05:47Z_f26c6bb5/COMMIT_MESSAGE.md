commit f26c6bb527e3335fd3ae9174a8dc40a5fb5a0270
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Fri Apr 25 10:05:47 2025 -0700

    [exporterhelper] Do not ignore the `num_consumers` setting when batching is enabled (#12921)
    
    Remove hardcoding the number of queue workers to one if batching is
    enabled. The bug described in
    https://github.com/open-telemetry/opentelemetry-collector/issues/12244
    isn't relevant anymore.
