commit 6e61c9b54e0761136c230af948c5fc1c712820c1
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Mar 5 13:00:53 2024 -0800

    [cmd/mdatagen] Update the scope name generation method (#9693)
    
    Don't use hardcoded "go.opentelemetry.io/collector" prefix. Provide a
    way to specify the `scope_name` in metadata.yaml. If not provided, try
    to use the go package name.
    
    Updates
    https://github.com/open-telemetry/opentelemetry-collector/issues/9494
