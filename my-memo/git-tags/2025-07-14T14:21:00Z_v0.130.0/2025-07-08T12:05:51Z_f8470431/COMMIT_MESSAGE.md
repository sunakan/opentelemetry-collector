commit f847043147cf7dec7461192c3632a1a5864b40f4
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Jul 8 14:05:51 2025 +0200

    [service] Enable scope information in default Prometheus exporter (#13344)
    
    #### Description
    
    This changes the config for the default Prometheus exporter to remove
    `disable_scope_info: true`. This prevent errors in the exporter caused
    by metrics only differentiated by their scope being considered aliasing,
    which will become more common when the `telemetry.newPipelineTelemetry`
    feature gate graduates (see tracking issue for details).
    
    I marked this as a "breaking change", but I'm not sure if we make
    guarantees about the format of the Prometheus metrics we emit?
    
    #### Link to tracking issue
    
    Fixes #12939
    
    #### Testing
    
    I updated some tests to reflect the additional labels added to
    Prometheus metrics.
    
    I performed manual testing and confirmed that the reproduction case in
    the tracking issue no longer emits an error when the feature gate is
    enabled.
