commit 431fd11c8f4cea8386d23636021c6c6b5f4bbfb3
Author: Iris Grace Endozo <iendozo@atlassian.com>
Date:   Fri Sep 27 15:27:58 2024 +1000

    [confmap] Support expansion for environment variables with time formats (#11241)
    
    #### Description
    
    This addresses
    https://github.com/open-telemetry/opentelemetry-collector/issues/10659.
    In https://github.com/open-telemetry/opentelemetry-collector/pull/10800
    we removed restrictions on the types that can be allowed if expanded but
    in our case, this still fails because of the checks existing in
    `provider.checkRawConfType()`
    
    This adds `time.Time` as a type in the `provider.checkRawConfType()`
    instead of removing it completely.
    
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/10659
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    - added a test case to handle time formats in provider.go and expand.go
    - added an e2e test case to handle time formats
