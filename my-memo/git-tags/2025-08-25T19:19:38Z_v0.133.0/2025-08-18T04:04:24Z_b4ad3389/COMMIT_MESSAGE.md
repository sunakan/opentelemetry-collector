commit b4ad33892d1ff63b31fc91d6762a4b05c14b7dd9
Author: Andrew Wilkins <axw@elastic.co>
Date:   Mon Aug 18 12:04:24 2025 +0800

    receiver/otlpreceiver: log listener addresses (#13655)
    
    #### Description
    
    Change otlpreceiver to log the listener addresses, rather than
    configured endpoints. This enables discovery of ephemeral ports through
    logs.
    
    My goal is to enable more robust testing of the collector in a framework
    similar to
    https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/testbed/testbed
    
    #### Link to tracking issue
    
    Fixes #13654
    
    #### Testing
    
    Manually tested
    
    #### Documentation
    
    None
