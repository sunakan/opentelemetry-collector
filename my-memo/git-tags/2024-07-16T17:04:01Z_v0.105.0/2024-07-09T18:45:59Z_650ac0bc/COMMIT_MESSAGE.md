commit 650ac0bce389f85f9658b7a64a04fe6a1e4ad521
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue Jul 9 11:45:59 2024 -0700

    [service] add service.disableOpenCensusBridge gate (#10542)
    
    This feature gate allows end users to re-enable the opencensus bridge if
    there's a need for it. This preceeds #10406 and will be taken out of
    draft once
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/29867
    is completed.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/10414
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
