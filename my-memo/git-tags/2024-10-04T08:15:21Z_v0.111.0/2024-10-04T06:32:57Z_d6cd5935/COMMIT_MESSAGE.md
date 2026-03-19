commit d6cd5935eefcd93eaee1f268f7ab9f2cd65a1f44
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Oct 3 23:32:57 2024 -0700

    Fix data race condition, concurrent writes to the err variable, causes Undefined Behavior (#11349)
    
    The main issue is that after
    https://github.com/open-telemetry/opentelemetry-collector/pull/10910 the
    err variable is shared between requests because it uses the same address
    as the err defined outside the func.
    
    This is an UB because we are overwriting memory and will cause crashes
    like
    https://github.com/open-telemetry/opentelemetry-collector/pull/11335,
    where the check for not nil happens then gets overwrite with nil and
    crashes.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/11350
    
    ---------
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
