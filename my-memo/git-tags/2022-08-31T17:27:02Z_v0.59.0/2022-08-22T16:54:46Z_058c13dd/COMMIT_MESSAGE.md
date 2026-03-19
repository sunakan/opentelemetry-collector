commit 058c13dd66eb6766d3b50cfdbdca743c379c8e7e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Aug 22 09:54:46 2022 -0700

    Add an AsRaw func on the flags, lots of places to encode these flags (#5934)
    
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/main/pkg/telemetryquerylanguage/contexts/tqlmetrics/metrics.go#L614
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/main/processor/metricstransformprocessor/operation_aggregate_labels.go#L196
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/main/pkg/stanza/adapter/frompdataconverter.go#L220
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/main/exporter/alibabacloudlogserviceexporter/logsdata_to_logservice.go#L174
    https://github.com/open-telemetry/opentelemetry-collector-contrib/blob/main/exporter/tencentcloudlogserviceexporter/logsdata_to_logservice.go#L172
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
