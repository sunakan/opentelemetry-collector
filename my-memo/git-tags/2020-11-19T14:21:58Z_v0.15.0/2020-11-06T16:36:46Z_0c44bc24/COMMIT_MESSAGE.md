commit 0c44bc24b4c69af8a07c64bd4aa35f48500cc2a8
Author: Jason Liu <liujasn@amazon.com>
Date:   Fri Nov 6 08:36:46 2020 -0800

    Implement Conversion Between OC and OTel Summary Metric (#2048)
    
    _Note:_ This PR is based off the Summary datapoint proto (that has not been merged upstream) in this [PR](https://github.com/open-telemetry/opentelemetry-proto/pull/227/files).
    
    **Description:**
    
    This PR has two main parts:
    
    * Implement the [Summary datapoint proto](https://github.com/open-telemetry/opentelemetry-proto/pull/227/files) in the OTel Collector. Changes were made to _metrics_struct.go_ to create the generated Summary structs (using the `make genproto` and `make genpdata` commands).
    * Add in the conversion between OpenCensus summary metrics and OTel Summary datapoints. This conversion directly adds compatibility for the Prometheus Summary metric in the PrometheusReceiver.
    
    **Link to tracking Issue:** [opentelemetry-specification/issues/1146](https://github.com/open-telemetry/opentelemetry-specification/issues/1146) and [opentelemetry-collector/issues/1638](https://github.com/open-telemetry/opentelemetry-collector/issues/1638)
    
    A lot of the code in this PR is auto-generated from creating the structs and protos. The following files are were auto-generated:
    * generated_metrics.go
    * generated_metrics_test.go
    * trace_config.pb.go
    * metrics.pg.go
    
    **Testing:**
    
    * Updated unit tests in _oc_to_metrics.go_ for conversion between OC summary metrics to OTel summary metrics
    * Created end-to-end tests for the Summary metric in PrometheusReceiver
