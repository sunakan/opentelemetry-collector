commit 3087c5386a092c0d874ec0ee25a9ee2c2974b097
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Fri Jul 12 08:21:03 2024 -0700

    [otelcol] Obtain the Collector's effective configuration from `otelcol.Config` (#10139)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    The `otelcol.ConfmapProvider` interface accurately reports the config
    provided to the Collector by the user, but fails to effectively report
    the Collector's effective configuration. In particular, it misses:
    * Default values for fields in Config structs.
    * Transformations done to Config structs by their `Unmarshal` or
    `Validate` methods.
    * Custom marshaling of types after we know the type of the config. This
    is most obvious with `configopaque.String`, where we want these values
    to always be redacted when sent out of the Collector.
    
    I think we should attempt to get the Collector's effective configuration
    from `otelcol.Config` instead of using the map compiled by the
    confmap.Resolver. This also allows us to get rid of
    `otelcol.ConfmapProvider`.
    
    I have manually tested this using an OpAMP Supervisor setup, but wasn't
    able to add unit tests due to the way `otelcol.Collector` is written.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
