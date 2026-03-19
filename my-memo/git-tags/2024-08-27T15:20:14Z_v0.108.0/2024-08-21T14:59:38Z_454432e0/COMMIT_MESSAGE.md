commit 454432e06fa06c8b35c05005cd430cc166ab633d
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed Aug 21 16:59:38 2024 +0200

    Move receiver builder into internal service (#10781)
    
    #### Description
    
    This moves the receiver builder out of the `receiver` package, and into
    `service/internal/builders`.
    There's no real reason for this struct to be public (folks shouldn't
    call it), and making it private will allow us to add profiling support
    to it.
    
    #### Link to tracking issue
    
    https://github.com/open-telemetry/opentelemetry-collector/pull/10375#pullrequestreview-2144929463
