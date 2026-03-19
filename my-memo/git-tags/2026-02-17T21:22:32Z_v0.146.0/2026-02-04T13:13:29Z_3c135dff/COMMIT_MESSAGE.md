commit 3c135dfffa44ddff296e2fbaa095a88ee9153f42
Author: Carson Ip <carsonip@users.noreply.github.com>
Date:   Wed Feb 4 13:13:29 2026 +0000

    [config/confighttp] Fix high cardinality span name from request method from confighttp server internal telemetry (#14522)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Bound cardinality from request method in span name by passing thorugh
    upper case request method only if well known, otherwise set `{method}`
    to `HTTP`.
    
    Implemented according to
    https://opentelemetry.io/docs/specs/semconv/http/http-spans/
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #14516
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    Unit test for unknown method and lowercase method.
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
