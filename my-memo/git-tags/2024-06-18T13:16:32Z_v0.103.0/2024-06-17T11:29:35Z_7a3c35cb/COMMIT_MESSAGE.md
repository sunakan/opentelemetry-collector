commit 7a3c35cb77f5eb2d1d3fa3478ce8d94a56a6434a
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Jun 17 11:29:35 2024 +0000

    [confmap] Add strict type validation under a feature gate (#10400)
    
    #### Description
    
    <!-- Issue number if applicable -->
    
    - Add `confmap.strictlyTypedInput` feature gate that introduces stricter
    type checks when resolving configuration
    - Make `confmap.NewRetrievedFromYAML` function public so that external
    providers have consistent behavior when resolving YAML
    - Adds `confmap.Retrieved.AsString` method to retrieve string
    representation for retrieved values
    
    #### Link to tracking issue
    
    Relates to #9854, updates #8565, #9532
