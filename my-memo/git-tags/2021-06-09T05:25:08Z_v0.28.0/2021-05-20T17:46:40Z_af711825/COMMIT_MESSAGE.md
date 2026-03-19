commit af711825a8b1d2e559b97485734f5b65f5f6d0f3
Author: Pavan Krishna <pavankri@cisco.com>
Date:   Thu May 20 10:46:40 2021 -0700

    Support for Custom Exporter Authenticators as Extensions (#3128)
    
    This PR adds support to add client side (exporter) authenticators for HTTP and gRPC clients through extension based authenticators. This is built of top of what was added  for receiver (server) side authenticators via extensions in #2603
    
    **Link to tracking Issue:** #3115
    
    **Testing:**
    - Did a manual testing for static bearer token.
    - Added unit tests
