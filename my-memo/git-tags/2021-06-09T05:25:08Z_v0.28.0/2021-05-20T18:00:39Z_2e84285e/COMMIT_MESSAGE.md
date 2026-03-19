commit 2e84285efc665798d76773b9901727e8836e9d8f
Author: Ryan Fitzpatrick <rmfitzpatrick@users.noreply.github.com>
Date:   Thu May 20 14:00:39 2021 -0400

    Use dedicated zapcore.Core for Windows service (#3147)
    
    As reported in #2756 Windows service events only contain the zap entry message and none of the fields.  These changes create a dedicated `zapcore.Core` to wrap the service logger's Core and use a production console encoder to encode the full entry, including its fields and stack if provided.
    
    **Link to tracking Issue:**
    
    https://github.com/open-telemetry/opentelemetry-collector/issues/2756
