commit c9058e65820080bf837001d12b1a78865767abad
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Sep 4 03:14:57 2024 -0600

    [extension/ballast] Remove the deprecated memory ballast extension (#10671)
    
    #### Description
    This PR removes the deprecated memory ballast extension and all the
    logic in place in memorylimiter and service that was using it.
    
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/issues/8343. I
    don't want to close it until the [helm
    chart](https://github.com/open-telemetry/opentelemetry-helm-charts/pull/1268)
    is updated.
    
    #### Testing
    Unit tests
    
    ---------
    
    Co-authored-by: Antoine Toulme <antoine@toulme.name>
    Co-authored-by: Curtis Robert <crobert@splunk.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
