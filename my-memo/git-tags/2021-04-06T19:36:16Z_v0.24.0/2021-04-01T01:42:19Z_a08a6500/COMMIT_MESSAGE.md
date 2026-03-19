commit a08a6500261720db5f457006cde6eeb3b82fc15c
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Mar 31 18:42:19 2021 -0700

    exporter/prometheusremotewriterexporter: close HTTP response body (#2875)
    
    Fixes a leak in HTTP responses after sending protobuf payloads
    to Amazon's endpoints. This change ensures that connections
    can be successfully reused, otherwise without invoking .Close()
    they won't easily be reused.
    Discovered while investigating for anything that could be averse
    to scalability of the exporter.
    
    Fixes #2874
