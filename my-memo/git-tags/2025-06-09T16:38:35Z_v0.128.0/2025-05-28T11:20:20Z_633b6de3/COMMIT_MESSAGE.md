commit 633b6de37fec996610fe88864fb60cf4ba83eabf
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed May 28 13:20:20 2025 +0200

    [config/configoptional] Add new configoptional module (#13044)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds new `configoptional` module.
    
    I left `GetOrInsertDefault` out of this first PR so we can get agreement
    on the basics first.
    
    #### Link to tracking issue
    
    Fixes #12981
    Fixes #10266
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    
    See #13018 for usage and testing of the package on `confighttp` and
    `otlpreceiver`.
