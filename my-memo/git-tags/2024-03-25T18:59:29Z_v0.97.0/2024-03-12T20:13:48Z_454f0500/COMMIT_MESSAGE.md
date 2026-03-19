commit 454f050014fd906e4553be668e4ec1744d9bfb1d
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Mar 12 16:13:48 2024 -0400

    [exporter/nopexporter] Add the nopexporter (#9448)
    
    **Description:**
    
    Add the nopexporter. This can be helpful if a user wants to start the
    Collector with a dummy pipeline to only enable extensions. It could also
    be used to test Collector pipeline throughput.
    
    **Link to tracking Issue:**
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/7316
    
    **Testing:**
    
    Added lifecycle tests; the receiver doesn't do anything.
    
    **Documentation:**
    
    Added a readme for the component.
    
    cc @djaglowski @tigrannajaryan
