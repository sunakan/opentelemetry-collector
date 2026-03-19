commit 49a090ba924b3fc08035c6a0ef9cb4ff272a9c0f
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Tue Aug 8 12:40:08 2023 -0400

    Notify extensions of the Collector's effective configuration (#6833)
    
    **Description:**
    
    This adds an optional `ConfigWatcher` interface that extensions can
    implement if they want to be notified of the effective configuration
    that is used by the Collector.
    
    I don't feel very strongly about any of the decisions I made in this PR,
    so I am open to input if we would like to take a different approach
    anywhere. I will leave some comments to explain the decisions I made.
    
    **Link to tracking Issue:**
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/6596
    
    **Testing:**
    
    I've made minimal unit test changes, but I expect to write more tests
    once there is consensus on the direction for implementing this
    functionality. I have done some manual testing to show that an extension
    can get a YAML representation of the effective config using two YAML
    input files.
    
    ---------
    
    Co-authored-by: Evan Bradley <evan-bradley@users.noreply.github.com>
