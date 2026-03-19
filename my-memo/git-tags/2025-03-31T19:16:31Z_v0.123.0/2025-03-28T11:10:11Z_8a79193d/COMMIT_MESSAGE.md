commit 8a79193d28ccb819e2b14fc88970aa7b3ce657b4
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Fri Mar 28 12:10:11 2025 +0100

    [service] Add `service::telemetry::metrics::views` config key (#12433)
    
    #### Description
    
    This PR adds a `service::telemetry::metrics::views` config key, which
    explicitly sets the list of metric views used for internal telemetry,
    mirroring `meter_provider::views` in the SDK config. This can be used to
    disable specific internal metrics, among other uses.
    
    This key will cause an error if used alongside other features which
    would normally implicitly create views, such as:
    - not setting `service::telemetry::metrics::level` to `detailed`;
    - enabling the `telemetry.disableHighCardinalityMetrics` feature gate.
    
    #### Further discussion needed
    
    - A comment notes that the `telemetry.disableHighCardinalityMetrics`
    alpha gate *"will be removed when the collector allows for view
    configuration"*. I think setting the gate as deprecated first would be
    the correct thing to do, but it means that users relying on it will see
    their Collectors crash on update. Is that okay?
    
    - In the context of being able to enable/disable specific metrics, this
    key is only useful to disable metrics from an "all enabled" baseline. It
    cannot easily be used to customize the set of metrics emitted at `level:
    normal`, `level: basic`. Discussion is ongoing in #10769 on how to
    handle that, but the solution will probably involve a new key, which
    should hopefully be backward-compatible with the user-visible changes in
    this PR.
    
    #### Link to tracking issue
    Updates #10769
    
    #### Testing
    None yet
    
    #### Documentation
    None yet, except the changelog
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
