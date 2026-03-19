commit 69ff46bbee2acc46963c24b98c7dc7ae23138118
Author: Mackenzie <63265430+mackjmr@users.noreply.github.com>
Date:   Wed Oct 2 17:17:56 2024 +0200

    [exporter/otlphttpexporter] Remove unnecessary nil assignment in default client config (#11299)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This is a follow up to #11273 in which I had set fields `MaxIdleConns`,
    `MaxIdleConnsPerHost`, `MaxConnsPerHost`, `IdleConnTimeout` to nil
    manually to keep backwards compatibility.
    
    However, in the call to
    [ToClient](https://github.com/open-telemetry/opentelemetry-collector/blob/main/config/confighttp/confighttp.go#L141-L166)
    the `http.Transport` defaults are used. The call to
    `NewDefaultClientConfig` also uses the `http.Transport` defaults.
    
    Thus, not setting to nil will maintain the same behaviour/ is
    unnecessary.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
