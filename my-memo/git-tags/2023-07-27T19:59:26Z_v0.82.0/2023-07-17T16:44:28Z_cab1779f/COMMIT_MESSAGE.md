commit cab1779ff2ceb1cb5b00804560245debd3e298d0
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Jul 17 09:44:28 2023 -0700

    [chore] add retry for coverage upload (#8093)
    
    This is using the same gh action as in contrib to
    address failing coverage upload actions.
    
    Fix
    https://github.com/open-telemetry/opentelemetry-collector/issues/7131
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
