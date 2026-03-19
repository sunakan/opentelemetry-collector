commit 30681221e78359871c9e9946048e792db1b2b821
Author: Andrew Wilkins <axw@elastic.co>
Date:   Thu Apr 10 17:16:20 2025 +0800

    client: add Metadata.Keys method (#12805)
    
    #### Description
    
    Add support for iterating over the client metadata keys.
    
    At the moment it is only possible to get the values for a known key,
    which makes it impossible to inspect metadata keys without prior
    knowledge of all possible keys, e.g. as described in
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/39157.
    
    #### Link to tracking issue
    
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12804
    
    #### Testing
    
    Trivial addition, added unit tests.
    
    #### Documentation
    
    N/A
