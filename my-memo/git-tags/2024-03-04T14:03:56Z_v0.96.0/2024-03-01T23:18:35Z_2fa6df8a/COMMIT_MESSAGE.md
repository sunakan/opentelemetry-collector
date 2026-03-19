commit 2fa6df8ad7488db15daf9296f228487fdea78a52
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Fri Mar 1 17:18:35 2024 -0600

    [configgrpc] Add `ToServerContext`  (#9624)
    
    Adds a new function, `ToServerContext` which does what `ToServer` does,
    but takes a `context.Context`. After the next release we'll deprecate
    `ToServerContext` and rename it to `ToServer`.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/9490
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
