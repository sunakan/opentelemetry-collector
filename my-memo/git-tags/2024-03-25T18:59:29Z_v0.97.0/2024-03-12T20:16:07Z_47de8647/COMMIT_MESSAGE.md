commit 47de8647738d93209537f559874be6c303d3666b
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Mar 12 16:16:07 2024 -0400

    [receiver/nopreceiver] Add the nopreceiver (#9446)
    
    **Description:**
    
    Add the nopreceiver. This can be helpful if a user wants to start the
    Collector with a dummy pipeline to only enable extensions. It could also
    be used to start a dynamically-configured Collector that starts with no
    config and waits to receive its config from a confmap.Provider that
    supports reloads.
    
    **Link to tracking Issue:**
    
    Works toward
    https://github.com/open-telemetry/opentelemetry-collector/issues/7316
    
    **Testing:**
    
    Added lifecycle tests; the receiver doesn't do anything.
    
    **Documentation:**
    
    Added a readme for the component.
