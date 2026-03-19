commit 8286fe001a4de7af421f27c00a9826010387d0ec
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Oct 19 13:02:37 2020 -0400

    Fix OTLP/HTTP receiver's path to be /v1/traces (#1979)
    
    OTLP/HTTP receiver was incorrectly expecting traces on /v1/trace.
    OTLP spec require the path to be /v1/traces. This change adds /v1/traces
    as a supported alias in the receiver to match what spec requires.
    
    We will keep both paths supported for a while and then will eventually
    retire /v1/trace.
    
    Note that the OTLP/HTTP exporter already correctly uses /v1/traces path.
    
    Fixes: https://github.com/open-telemetry/opentelemetry-collector/issues/1968
