commit 370c6d16929627e722646f716bb20980bf547181
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Apr 16 17:44:34 2024 +0200

    [chore] Move logging out of meter provider initialization (#9729)
    
    **Description:**
    
    Moves logging messages about the meter provider outside of the meter
    provider initialization.
    
    While working on
    https://github.com/open-telemetry/opentelemetry-collector/issues/4970#issuecomment-1911978462,
    I realized there is an implicit dependency in the initialization order
    of the different telemetry components.
    
    I tried making this work and make the factory have a single
    `CreateTelemetrySettings`, but this results in an awkward API, so I am
    trying the alternative here: don't log during the meter provider
    initialization, but do so outside of it.
    
    **Link to tracking Issue:** Relates to #4970
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
