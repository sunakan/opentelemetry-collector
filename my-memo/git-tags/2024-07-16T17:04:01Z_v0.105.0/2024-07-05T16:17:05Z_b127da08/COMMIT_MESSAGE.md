commit b127da0890383628beeb30868f8b94a9a12263b1
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Jul 5 18:17:05 2024 +0200

    [chore] Make internal/featuregates into a module, move confmap fg there (#10532)
    
    #### Description
    
    Create new internal module `internal/featuregates`.
    
    This will be useful for importing feature gates while not creating a
    dependency cycle.
    
    I intend to use this for importing `confmap.strictlyTypedInput` in
    `otelcol` in a follow up PR.
