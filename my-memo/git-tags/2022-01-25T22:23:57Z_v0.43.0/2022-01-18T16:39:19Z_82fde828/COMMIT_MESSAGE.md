commit 82fde82839b2558cdb393473de411b40662da9ff
Author: Mark Stumpf <mstumpf@signalfx.com>
Date:   Tue Jan 18 11:39:19 2022 -0500

    Correctly clone windows logging encoder (#4686)
    
    **Description:**
    Fixes #4685. When `With` is called, clone the
    original encoder instead of creating a new one. Fields were being
    dropped because fields are apart of the encoder and each new call to
    `With` was creating a new encoder.
    
    **Link to tracking issue:**
    https://github.com/open-telemetry/opentelemetry-collector/issues/4685
    
    **Testing:**
    Tested manually with a windows service.
