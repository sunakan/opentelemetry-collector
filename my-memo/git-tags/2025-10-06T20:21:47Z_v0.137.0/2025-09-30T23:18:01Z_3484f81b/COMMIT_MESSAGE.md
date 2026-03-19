commit 3484f81b8aa86b3ec1f44e395a055f15b7721e4b
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Tue Sep 30 16:18:01 2025 -0700

    [mdatagen] Improve validation for attribute `enabled` field (#13921)
    
    Resource attributes now require an explicit `enabled` field in
    metadata.yaml files, while regular attributes are prohibited from having
    this field. This improves validation and prevents configuration errors.
    
    Brought from discussion in
    https://github.com/open-telemetry/opentelemetry-collector/pull/13900
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12722
