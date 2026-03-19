commit 5a487e40b59dca9798e63b2cf24a8dec311d6077
Author: Constance Caramanolis <19931185+ccaraman@users.noreply.github.com>
Date:   Wed Jun 24 15:17:14 2020 -0700

    Continue attribute regex support from PR 981 (#1171)
    
    Note: All of the cudos go to @dneray for the logic/testing/effort in https://github.com/open-telemetry/opentelemetry-collector/pull/981
    
    This pr is based off of it with the following modifications
    
    - The config looks like
    ```
    - key : <key to use for applying the rule too>
      pattern: <the regex pattern with named submatchers>
      action: extract
    ```
    I think that the original PR is going in the right way for what we can the internal logic to be but as the issue #979 and #1170 indicate we need to take a step back and redesign the attributes processor (or make it clear of its limitations).  This pr unblocks the required functionality.
    
    **Link to tracking Issue:** #979
    
    **Link to follow up issue:** #1170
    
    **Testing:** Added tests for extracting.
    
    **Documentation:** Updated processor readme.
