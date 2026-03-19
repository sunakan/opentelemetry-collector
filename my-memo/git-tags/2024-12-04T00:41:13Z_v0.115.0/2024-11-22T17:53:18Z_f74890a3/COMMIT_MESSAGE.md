commit f74890a3889a82f57b839a8b316bb43b1e55f53e
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Fri Nov 22 09:53:18 2024 -0800

    [service] update telemetry level to reflect their state (#11729)
    
    This sets the level of all metrics that where not previously stabilized
    as alpha. Since many of these metrics will change as a result of
    https://github.com/open-telemetry/opentelemetry-collector/pull/11406, it
    made sense to me to set their stability as alpha.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
