commit ff7a48564ca267ea263676de7881f1e8ba309ec8
Author: Kristina Pathak <kristina.m.pathak@gmail.com>
Date:   Fri May 3 04:47:38 2024 -0700

    [builder] make retries configurable for faster tests (#10035)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    When running tests, waiting for `downloadModules()` to fail 3 times when
    that's expected adds time to the test run. This updates tests to only
    attempt downloading once. Note: if there's a network failure that could
    cause `downloadModules()` to fail when it should normally succeed. Also
    the wording here is `retries` when in actuality it's the number of
    attempts. I didn't change this to keep the log wording the same, but I
    can change the wording if that's preferable.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    this will help for adding tests for
    https://github.com/open-telemetry/opentelemetry-collector/issues/9252
    and
    https://github.com/open-telemetry/opentelemetry-collector/issues/9896
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Tests ran
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
