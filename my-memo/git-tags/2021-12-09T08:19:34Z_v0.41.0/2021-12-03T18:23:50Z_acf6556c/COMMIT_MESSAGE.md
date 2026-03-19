commit acf6556c8809a9997cf0df1876bd3d1e77d88bd8
Author: Vera Reynolds <vreynolds@users.noreply.github.com>
Date:   Fri Dec 3 11:23:50 2021 -0700

    feat: informative user-agent for otlp exporters (#3970)
    
    * feat: collector-aware user-agent header
    
    - add collector build info to otlp/otlphttp exporter headers
    
    * Address PR comments
    
    - move user-agent additions to the exporters
    - add OS and ARCH to user-agent
    
    * encase user-agent os/arch in parenthesis
    
    * add doc comment
    
    * move otlp-http user-agent to exporter
    
    * formatting
    
    * revert unnecessary diff
    
    * formatting
    
    * http exporter: use a custom round tripper, clone request
    
    * RoundTrip must always close the body
    
    * remove custom roundtripper
    
    * fix lint issue
    
    * update changelog
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
