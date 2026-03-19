commit c155b14c7cf0e658b4ad69c8469cef9255b36159
Author: Mackenzie <63265430+mackjmr@users.noreply.github.com>
Date:   Thu Sep 26 19:21:54 2024 +0200

    [exporter/otlphttpexporter] Use NewDefaultClientConfig instead of manually creating struct (#11273)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR makes usage of `NewDefaultClientConfig` instead of manually
    creating the `confighttp.ClientConfig` struct. The updates to defaults
    are maintained (Timeout, Compression, WriteBufferSize) whereas the
    fields that match the default are not manually set anymore (Endpoint,
    Headers).
    
    It also sets to nil the fields that are set in default but weren't set
    previously (MaxIdleConns, MaxIdleConnsPerHost, MaxConnsPerHost,
    IdleConnTimeout) to retain the same behaviour. I am on the fence about
    this one, should we switch to using the defaults ?
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    #11274
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
