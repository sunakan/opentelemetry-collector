commit dae8035e7faf9a2b5e3b4ad09e96e3265ece180e
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Feb 18 10:17:36 2020 -0500

    Add OC to OTLP translation functions (#546)
    
    This implements OC to OTLP protobuf message translation.
    The code is currently reachable only from the tests.
    
    We probably need a bit more coverage for this code but I am
    submitting this change as is for the sake of keeping the
    size of the PR managable for reviewing.
    
    Contributes to https://github.com/open-telemetry/opentelemetry-collector/issues/478
