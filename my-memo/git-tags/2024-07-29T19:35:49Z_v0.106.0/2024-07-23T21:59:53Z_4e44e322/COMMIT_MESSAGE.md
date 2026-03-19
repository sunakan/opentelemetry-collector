commit 4e44e32280e44bc4ff7f4057bcfa9ec7280502af
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Tue Jul 23 15:59:53 2024 -0600

    [service] Remove getBallastSize from service (#10696)
    
    #### Description
    
    This PR removes all ballast logic from service. This effectively
    deprecates the ballastextension as including the extension with this
    service would do nothing.
    
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10671
    
    #### Link to tracking issue
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/8342
    
    #### Testing
    Unit tests.
