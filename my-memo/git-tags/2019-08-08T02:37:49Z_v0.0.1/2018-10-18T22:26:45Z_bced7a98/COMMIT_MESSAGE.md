commit bced7a98a22403e2aa9eaf620f02f25f83b50fef
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Wed Oct 17 22:18:55 2018 -0700

    cmd/ocagent: added zPages for overall ocagent process
    
    Added zPages as the diagnostic helper for the overall
    ocagent process itself #inception
    
    By default the zPages run at ":55679/debug". They can be
    disabled in the config.yaml file by using the attribute
      `disabled`
    
    ```yaml
    zpages:
       disabled: true
       port: 8888
    ```
    
    Also added as an attribute the number of exported spans
    for every internal interceptor span.
    
    Fixes #83
