commit 56135230d1d998608cc7c61250b28b64ffdd620b
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Jul 21 14:40:32 2023 -0700

    add span processor configuration (#8117)
    
    This PR adds support for configuring batch span processor for internal
    collector traces. It adds support to export them via the stdout
    exporter.
    
    Linked issue
    https://github.com/open-telemetry/opentelemetry-collector/issues/8106
    
    Follows
    https://github.com/open-telemetry/opentelemetry-collector/pull/8097
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
