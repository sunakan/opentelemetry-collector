commit d6bd0a51931daef4ba0803c9aa939d28272c3d53
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Apr 1 08:32:55 2025 -0700

    Revert "[chore] Auto-populate versions during release preparation" (#12775)
    
    Reverts open-telemetry/opentelemetry-collector#12733
    
    The problem is that the CURRENT_VERSION envs are prefixed with "v" and
    nothing is working anymore.
