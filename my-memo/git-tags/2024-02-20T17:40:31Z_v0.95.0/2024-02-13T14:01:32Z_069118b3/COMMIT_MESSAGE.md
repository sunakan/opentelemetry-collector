commit 069118b3b080c7fad60b4e11dff542edf17ea990
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Feb 13 14:01:32 2024 +0000

    [service] Replace telemetryInitializer by MeterProvider wrapper (#9454)
    
    **Description:**
    
    Refactor meter provider initialization; removes `telemetryInitializer`
    and replaces it by a MeterProvider wrapper that owns the lifetime of the
    OpenCensus registry and the servers associated with the MeterProvider.
    
    **Link to tracking Issue:** Relates to #4970 (first refactor before
    trying out the factory pattern in an internal package)
