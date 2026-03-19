commit 283d8c2f7a45cdc7310d79bfb0c173c02d3216a6
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Mar 27 09:12:39 2020 -0700

    Add internal data support to cloning fanout connectors (#717)
    
    Cloning fanout connectors now able to work with new type of downstream consumers.
    
    - Also add test data generators for metric internal data from https://github.com/open-telemetry/opentelemetry-collector/pull/718
