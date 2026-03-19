commit 33264a5408cd918cfb45fd622b99f681c67d535c
Author: Damien Mathieu <42@dmathieu.com>
Date:   Thu Nov 28 09:40:17 2024 +0100

    Upgrade pdata to proto 1.4.0 (#11722)
    
    This upgrades pdata to the
    [1.4.0](https://github.com/open-telemetry/opentelemetry-proto/releases/tag/v1.4.0)
    version of protobufs.
    
    Sorry for the very large PR. This can't really be split into smaller PRs
    though, as changes are not backwards compatible.
    
    This PR includes
    https://github.com/open-telemetry/opentelemetry-collector/pull/11706, as
    the two are very close and separating them would cause weird conflicts.
    The two changes can be merged either as separate PRs (with 11706 first),
    or as one.
    
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/11720
    
    cc @mx-psi
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
