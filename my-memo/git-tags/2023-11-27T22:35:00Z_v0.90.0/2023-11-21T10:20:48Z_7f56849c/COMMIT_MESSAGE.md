commit 7f56849c0d15312890f68d5a406dc3f22698b84f
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Nov 21 02:20:48 2023 -0800

    [service] remove _total suffix for otel generated metrics (#8965)
    
    This ensures backwards compatibility with the metrics generated via
    opencensus by default today.
    
    Part of #7454
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
