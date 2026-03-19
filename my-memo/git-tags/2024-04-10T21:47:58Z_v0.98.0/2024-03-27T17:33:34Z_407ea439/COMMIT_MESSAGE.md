commit 407ea439e3c74533aac4776b49e6c8d22036d18c
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Mar 27 11:33:34 2024 -0600

    [configtls] Add context.Context to public functions (#9813)
    
    **Description:**
    Opening this PR to prompt discussion about `configtls` and
    `context.Context`.
    
    We could add `context.Context` to these public functions and go through
    the long deprecation/rename process, but I want to make sure it is
    valuable.
    
    Arguments against this PR:
    - There isn't anything within these functions that currently rely on a
    `context.Context`.
    - There isn't anything inside these functions interact with the network.
    
    Arguments in favor of this PR:
    - Interacts with filesystem.
    - Go best practice to allow passing context.
    
    **Link to tracking Issue:**
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/9811
    
    ---------
    
    Co-authored-by: Andrzej Stencel <astencel@sumologic.com>
