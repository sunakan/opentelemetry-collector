commit 6928951f738e2173bf65d114fec1e28577a6625f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Sep 9 08:31:12 2024 -0700

    Revert "[configtelemetry] Mark module as stable" (#11055)
    
    Reverts open-telemetry/opentelemetry-collector#11002
    
    Per discussion today 09/04 we will postpone the stabilization of this
    module until we have a good understanding of where this will exactly be
    used. The decision was that level will not be used in the component, so
    stabilization of this model no longer blocks progress on component
    module stabilization.
