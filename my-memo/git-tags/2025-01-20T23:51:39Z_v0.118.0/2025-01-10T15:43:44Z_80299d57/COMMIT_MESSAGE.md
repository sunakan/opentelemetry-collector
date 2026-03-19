commit 80299d5752bc61f952fd9c8e0665b68ae0a6d4c2
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Jan 10 16:43:44 2025 +0100

    [otelcoltest] Add DefaultScheme to test ConfigProvider (#12066)
    
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds `DefaultScheme` to test `otelcol.ConfigProvider`, so that the test
    behavior is equivalent to the real thing.
    
    #### Link to tracking issue
    
    Relates to open-telemetry/opentelemetry-collector-contrib/pull/37122
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    
    Added a test that failed before adding the DefaultScheme.
