commit 1a21d18793c19c2fc4dba6c64d4082c752dfb716
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Nov 13 20:18:39 2023 -0800

    Do not add Logger field queue name, already configured (#8879)
    
    These data are already logger fields, see
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/service/internal/components/loggers.go#L40
    
    * ID is under `name`
    * DataType is under `data_type`
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
