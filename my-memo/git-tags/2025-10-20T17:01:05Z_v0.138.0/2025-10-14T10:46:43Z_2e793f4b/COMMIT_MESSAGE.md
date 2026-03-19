commit 2e793f4bcbcf1c2fea8702919d4f08feb0307e63
Author: Damien Mathieu <42@dmathieu.com>
Date:   Tue Oct 14 12:46:43 2025 +0200

    Fix genotelcorecol in CI (#14017)
    
    CI is using the latest minor version, so when running `make
    genotelcorecol`, it upgrades from 1.24.8 to 1.24.9, which fails CI.
    
    See
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/18489269457/job/52678913721?pr=14007
