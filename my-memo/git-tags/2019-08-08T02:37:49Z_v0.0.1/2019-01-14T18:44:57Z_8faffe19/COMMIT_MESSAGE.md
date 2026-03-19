commit 8faffe195806d4d71555151cdd2855cfc456aab2
Author: Dave Raffensperger <daveraff@google.com>
Date:   Mon Jan 14 13:44:57 2019 -0500

    Add CORS option for OC Receiver grpc-gateway (#307)
    
    This adds a new cors_allowed_origins YAML config parameter to the opencensus receiver config block, which, if specified will allow HTTP clients to write to the trace grpc-gateway using CORS with the specified list of origins (wildcards can be used to match all origins or arbitrary origin substrings).
    
    This will help with development of opencensus-web.
