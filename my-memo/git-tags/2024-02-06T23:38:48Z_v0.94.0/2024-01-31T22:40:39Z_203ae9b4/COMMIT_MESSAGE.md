commit 203ae9b4e2034d82410ef705d4822a34bad6eaa1
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Jan 31 15:40:39 2024 -0700

    Parallelizing contrib check (#9449)
    
    **Description:**
    Implements a job matrix for the contrib checks. If we think it would be
    worth it, we could add a setup job to download the repo only 1 time.
    
    **Link to tracking Issue:**
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/30880
