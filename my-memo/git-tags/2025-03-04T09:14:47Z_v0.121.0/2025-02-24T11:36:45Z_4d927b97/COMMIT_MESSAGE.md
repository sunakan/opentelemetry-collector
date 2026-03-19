commit 4d927b97e1ccc013e784041d43c22d7eafe2769d
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Mon Feb 24 06:36:45 2025 -0500

    [service] create service/hostcapabilities package (#12375)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    create `service/hostcapabilities` package to expose `GetModuleInfos()`
    from service/host. Also moves getExporters interface for
    `GetExporters()` to this package.
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Addresses planned work from #12296
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    none, creates interface for existing function
    
    <!--Describe the documentation added.-->
    #### Documentation
    changelog yaml
    <!--Please delete paragraphs that you did not use before submitting.-->
