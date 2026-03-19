commit 23236b4f21c35692d1be282a777cd32915347647
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Tue Aug 13 09:49:05 2024 -0600

    [componentstatus] Add Reporter interface (#10852)
    
    #### Description
    Adds a `Reporter` interface that represents how a `component.Host`
    implementation could expose the ability to report a status.
    
    You can see how this interface will be used by looking at Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10777
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10777
    Related to
    https://github.com/open-telemetry/opentelemetry-collector/pull/10413
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Added unit test
