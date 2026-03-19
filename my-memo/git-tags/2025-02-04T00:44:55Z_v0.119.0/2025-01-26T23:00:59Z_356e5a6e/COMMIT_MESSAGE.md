commit 356e5a6e26c35a633e83e5b9c2cb473fee1d9748
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Mon Jan 27 07:00:59 2025 +0800

    [chore] Replace AssertMetrics with AssertEqualMetric series functions (#12184)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    A follow-up PR of #12179 , cc @bogdandrutu
    
    Note: This PR also removes those metric assertions which is actually
    testing metrics that doesn't belong to the package. They might be added
    due to the limitation of the AssertMetrics function. e.g. changes in
    `processor/memorylimitprocessor/memorylimiter_test.go`
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Relevant to #12179
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Updated
    
    <!--Describe the documentation added.-->
    #### Documentation
    n/a
    
    <!--Please delete paragraphs that you did not use before submitting.-->
