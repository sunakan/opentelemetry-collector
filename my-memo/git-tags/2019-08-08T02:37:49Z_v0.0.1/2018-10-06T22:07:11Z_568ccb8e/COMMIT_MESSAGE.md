commit 568ccb8e9c82a6733914d5ca220013987b1b11fa
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Sat Oct 6 12:01:54 2018 -1000

    exporter: add Plugins interface as well as guide
    
    Added the TraceExporterPlugin interface of the type
    ```go
    type TraceExporterPlugin interface {
            TraceExportersFromConfig(blob []byte, configType ConfigType) ([]TraceExporter, error)
            Stop(context.Context) error
    }
    ```
    
    as well as a guide and sample of an end-to-end written plugin.
    
    This is the interface and introduction phase of fixing the
    target issue. Actual plugin into `cmd/ocagent` will come
    in the final change.
    
    Updates #47
