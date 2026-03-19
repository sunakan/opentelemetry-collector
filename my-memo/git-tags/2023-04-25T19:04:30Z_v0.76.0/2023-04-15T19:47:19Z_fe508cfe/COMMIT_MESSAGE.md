commit fe508cfe83344f050918c9a96fa9364fa076c884
Author: Mackenzie <63265430+mackjmr@users.noreply.github.com>
Date:   Sat Apr 15 21:47:19 2023 +0200

    confmap: Add support for nested URIs (#7504)
    
    * confmap: Add support for nested URIs
    
    Addresses #7117.
    
    This PR adds support for nesting URIs, e.g.
    ```
    test: "${http://example.com/?os=${env:OS}}"
    ```
    **Breaking change:**
    In the case of an InvalidScheme, error `invalid uri: "g_c_s:VALUE"` will be thrown. Previously, no error was thrown (see [test case](https://github.com/open-telemetry/opentelemetry-collector/blob/v0.74.0/confmap/resolver_test.go#L623-L625)).
    
    Other than the above, there will be no breaking changes. Although the parser now provides the ability to understand why parsing a URI fails (e.g. missing opening `${`), no errors will be thrown to preserve the previous behaviour.
    
    The old way to expand env vars (e.g. `${HOST}`) is not supported in nested URIs, as expanding the old way is done in a converter. This has been documented.
    
    * add issue # to changelog
    
    * address feedback
    
    * address feedback
    
    * address feedback
    
    * Address feedback: change expandStringURI & preserve comment
    
    * Address feedback: move recursion to findURI
    
    * Address feedback: avoid duplicate calls to findURI
    
    * Update confmap/expand.go
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
    
    * Address Feedback
    
    * remove unused errURILimit
    
    * update findURI documentation
    
    * fix test
    
    * Update confmap/expand.go
    
    * Address feedback: remove named return values
    
    ---------
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
