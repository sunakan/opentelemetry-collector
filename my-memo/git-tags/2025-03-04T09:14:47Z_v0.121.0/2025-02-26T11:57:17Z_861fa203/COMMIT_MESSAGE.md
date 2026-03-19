commit 861fa203d7fd76d184584d8aee9dda5379fe5a18
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Wed Feb 26 06:57:17 2025 -0500

    [otelcol] add converters to components command (#12385)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Adds list of Converters to command `components`. Additionally, if this
    is accepted, Converters must now implement `Type()` function as part of
    interface. Given that there are no public converters in core or contrib
    repos, I didn't feel like this would be a controversial change, and it
    would be very easy for any private users of this interface to update
    their code to support it.
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Extends #11900
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    added test data to tests added in 11900, added test to collector_test.go
    
    <!--Describe the documentation added.-->
    #### Documentation
    Changelog file
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
