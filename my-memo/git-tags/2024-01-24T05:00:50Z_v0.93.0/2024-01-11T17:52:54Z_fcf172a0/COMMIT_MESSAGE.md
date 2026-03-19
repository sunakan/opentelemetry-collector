commit fcf172a057a84bae587f5571fe8e23ce871b664e
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Jan 11 18:52:54 2024 +0100

    Mark configopaque change as a breaking change (#9267)
    
    Follow up to #9214.
    
    I think marking this as breaking is warranted since we have found 6
    instances of breakage in contrib (fixed by
    open-telemetry/opentelemetry-collector-contrib#30304,
    open-telemetry/opentelemetry-collector-contrib#30402 and
    open-telemetry/opentelemetry-collector-contrib#30405).
    
    I am also:
    
    - Adding subtext explicitly stating how to fix this
    - Adding this to the user changelog, since it has user-facing
    implications.
