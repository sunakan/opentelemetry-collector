commit 1a57837accdff8bf9abc769a8e49b5207b52fad2
Author: Justin Mason <justin@familymason.com>
Date:   Mon Feb 12 10:59:49 2024 -0700

    Added support for snappy to enable prometheus remote write (#8983)
    
    Adding a feature.
    
    This adds `snappy` support for the confighttp compression package.
    This provides support for enabling the prometheus remote write receiver
    which only supports snappy.
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/7632
    
    Added unit test coverage and testing integration with prometheus remote
    write compatibility.
    
    ---------
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
