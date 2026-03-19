commit 5f95f72205256cba9618e36b4ad2f6172bb367e0
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Sat Feb 1 11:17:00 2025 -0800

    [chore] Remove impossible infinite workers use-case for Batcher (#11994)
    
    It is impossible to configure infinite workers today, see
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/exporter/exporterqueue/config.go#L41
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
