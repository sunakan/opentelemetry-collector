commit 98973e700829da7e2173bcb416df91e943f1c75b
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Mar 16 15:44:37 2020 -0400

    Add the rest of V2 factories and interfaces (#626)
    
    - Added V2 metric factories and interfaces for receivers and exporters.
    - Added V2 factories and interfaces for processors.
    - Creation methods in V2 factories accept a CreationParams struct to
      allow for easier addition of new parameters in the future without
      breaking the interface.
    
    All changes are uniform with previously introduced initial batch of
    V2 factories and interfaces (except introduction of CreationParams).
    
    Issue: https://github.com/open-telemetry/opentelemetry-collector/issues/478
