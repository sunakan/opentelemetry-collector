commit cd6d3c87a9534536f2cba6343108bedb408267ad
Author: Dale Peakall <dpeakall@etsy.com>
Date:   Fri Jan 31 22:51:51 2020 +0000

    Apply headers configuration to Jaeger gRPC exporter (#517)
    
    * Include configured headers in Jaeger GRPC exporter.
    
    * Fixed linting errors.
    
    * Modified so metadata is only initialised once
    
    * Added check that metadata contains headers before creating new context
