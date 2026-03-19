commit cdbe8e7b8460c6149deab60e1eacec0ba7cd5a13
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Wed Aug 23 21:15:26 2023 -0700

    [exporter/otlphttpexporter] Partial success HTTP response handling (#8270)
    
    **Description:**
    Fix the handling of the HTTP response to ignore responses not encoded as
    protobuf
    
    **Link to tracking Issue:**
    Fixes #8263
