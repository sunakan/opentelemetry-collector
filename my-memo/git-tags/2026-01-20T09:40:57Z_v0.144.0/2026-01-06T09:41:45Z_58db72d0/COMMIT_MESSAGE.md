commit 58db72d0f54da12da00e7b44a0a0c298004d75e6
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Tue Jan 6 01:41:45 2026 -0800

    [xconnector] Add component ID type validation to factory methods (#14357)
    
    Adds component ID type validation to all xconnector Create methods to
    match the pattern used in the all other factories. The checks were
    missed in
    https://github.com/open-telemetry/opentelemetry-collector/pull/12381
