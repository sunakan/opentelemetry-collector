commit 777be10a9e3b0d703f6ad5915f84bc5d6736577f
Author: Andrew Wilkins <axw@elastic.co>
Date:   Tue Aug 5 20:54:58 2025 +0800

    [service] Deprecate telemetry.disableHighCardinalityMetrics (#13538)
    
    #### Description
    
    Deprecate the feature gate now that metric views can be configured.
    
    #### Link to tracking issue
    
    Fixes #13537
    
    #### Testing
    
    Verified that the flag is deprecated with `otelcorecol featuregate` and
    `otelcorecol --feature-gates telemetry.disableHighCardinalityMetrics`
    (the latter leads to an error, as expected for deprecated feature
    gates.)
    
    #### Documentation
    
    Added changelog
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Jade Guiton <jade.guiton@datadoghq.com>
