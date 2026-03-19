commit f305ee93d1d8787d680183f93f38e83aa2315d0b
Author: Chao Weng <19381524+sincejune@users.noreply.github.com>
Date:   Sat Jul 5 02:10:24 2025 +0800

    [chore] [mdatagen] Metric and Event structs to embed Signal struct (#13316)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    This PR modified the `Metric` and `Event` structs embed `Signal` struct
    as they can share most of the properties and methods.
    
    Note: I cannot think of a better struct name. Please suggest if you have
    a better name.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    n/a
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Updated
    
    <!--Describe the documentation added.-->
    #### Documentation
    n/a
    
    <!--Please delete paragraphs that you did not use before submitting.-->
