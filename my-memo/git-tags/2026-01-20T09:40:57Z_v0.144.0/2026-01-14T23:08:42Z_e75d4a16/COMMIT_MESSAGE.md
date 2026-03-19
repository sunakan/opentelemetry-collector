commit e75d4a16b51df195fc909955f4df37346d7f4f06
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Jan 15 00:08:42 2026 +0100

    chore: replace service readme with mdatagen (#14410)
    
    The current service README isn't really appropriate, as it describes
    behavior actually handled by `otelcol`.
    This documentation is also end-user facing, and is therefore better
    suited for the website's documentation.
    
    Move of the service readme's documentation to opentelemetry.io:
    https://github.com/open-telemetry/opentelemetry.io/pull/8771
    
    This PR therefore cleans up the service package's README to use
    mdatagen.
    I didn't add any manual description of what the package does, as there
    are already a few godocs that handle that within the structs themselves.
    Also, this package shouldn't be used directly anyway.
