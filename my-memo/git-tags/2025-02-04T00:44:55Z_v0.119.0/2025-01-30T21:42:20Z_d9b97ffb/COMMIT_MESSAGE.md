commit d9b97ffb43cc86a28a402a48202aa426d3c0664b
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Jan 30 13:42:20 2025 -0800

    [metadatatest] Generate NewSettings that accepts componenttest.Telemetry (#12216)
    
    This is the last functionality needed to replace
    `metadatatest.Telemetry` with `componenttest.Telemetry`.
    
    The `metadatatest.Telemetry` will be deprecated next release to give
    time to change contrib since it is a large change.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
