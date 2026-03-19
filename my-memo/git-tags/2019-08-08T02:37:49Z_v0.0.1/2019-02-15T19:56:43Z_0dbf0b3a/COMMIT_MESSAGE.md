commit 0dbf0b3a3984f72aa89bffd7306bf505499a2921
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Thu Feb 14 21:15:47 2019 -0800

    exporter: add Honeycomb.io
    
    Add Honeycomb.io as a trace exporter.
    This exporter is based off OpenCensus-Go trace.Exporter.
    However, I shall file an issue or firstly page them to
    ask them to implement an OpenCensus-Proto trace Exporter.
    
    This change currently imports the work from:
        https://opencensus.io/exporters/supported-exporters/go/honeycomb/
    or succinctly
        https://github.com/honeycombio/opencensus-exporter
    
    A sample YAML file is:
    ```yaml
    receivers:
      opencensus:
        address: "localhost:55678"
    
    exporters:
      honeycomb:
        write_key: "739769d7-e61c-42ec-82b9-3ee88dfeff43"
        dataset_name: "dc8_9"
    ```
    
    Fixes #398
