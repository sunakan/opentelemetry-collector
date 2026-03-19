commit eebb96b7ec98b5448e5383261801f1fe8495f827
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed Jul 31 14:36:58 2024 -0700

    remove opencensus bridge support (#10406)
    
    This removes the configuration of the OpenCensus bridge from the
    Collector. This means that any metric still relying on it will no longer
    be emitting metrics.
    
    Closes #10414
    Closes #8945
    
    This is blocked until
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/29867
    is completed.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
