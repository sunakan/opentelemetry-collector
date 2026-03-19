commit 22c010d4446c17707fc25c88b38435c056049235
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Dec 21 10:32:12 2021 -0800

    fix nil error introduced in SetColGRPCLogger (#4598)
    
    This was triggered by the Prometheus Staleness tests. Setting the core logger to a NopLogger can cause NewIncreaseLevelCore to cause the following error:
    "invalid increase level, as level \"fatal\" is allowed by increased level, but not by existing core". The change in this PR fixes that to ensure the logger is never nil.
