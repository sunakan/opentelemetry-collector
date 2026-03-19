commit 4edaacddf92c43b932221a736163b04227d2157c
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Fri Jan 24 09:47:00 2025 -0800

    update config dependency (#11611)
    
    This PR does a couple of things that I couldn't quite split up so I put
    together a PR w/ individual commits to help reviewers get through it.
    This PR does the following:
    
    1. update `go.opentelemetry.io/contrib/config` package to latest. this
    brings in breaking changes. in order to prevent those breaking changes
    from impacting end users, i've also added a layer of config unmarshaling
    2. updates the collector to instantiate the meter provider (and
    exporters) via the config package. this allows us to remove all the code
    in `otelinit`. the reason for including this change was that
    unmarshaling the config was causing circular dependencies i didn't want
    to address by moving code that could be deleted around.
    
    
    Replacement for
    https://github.com/open-telemetry/opentelemetry-collector/pull/11458.
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12021
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
