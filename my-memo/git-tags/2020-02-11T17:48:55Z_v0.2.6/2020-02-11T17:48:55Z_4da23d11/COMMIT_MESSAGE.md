commit 4da23d11f0d8e3fa3309ac3804c9421b95235f32
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Feb 11 12:48:55 2020 -0500

    Add OTLP trace data types, factories and helpers (#534)
    
    This is step one in converting in-memory representation from OC to OTLP. This
    change has no effect except in tests. The introduced code is not reachable.
    
    Issue: https://github.com/open-telemetry/opentelemetry-collector/issues/478
