commit 15542e67e1346a87273a8c83c7f44582eab3874e
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Sep 3 15:45:12 2024 +0200

    [chore] Use updated connectorprofiles version (#11035)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Follows #10956, needed for
    open-telemetry/opentelemetry-collector-contrib#34956
    
    Before #10956, the `connectorprofiles` main packages was named
    `connector`, so this was causing a conflict with the actual `connector`
    module. This is not a problem in core because of the `replace`s, but it
    is a problem in contrib.
