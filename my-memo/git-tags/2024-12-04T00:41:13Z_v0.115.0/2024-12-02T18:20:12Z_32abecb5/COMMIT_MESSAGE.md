commit 32abecb5cc240c3e6520a83486d6013f1bac757d
Author: John L. Peterson (Jack) <john.peterson@datadoghq.com>
Date:   Mon Dec 2 13:20:12 2024 -0500

    [chore] move receiver/scrapererror to scraper/scrapererror (#11733)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    Migrates existing scrapererror code to new scraper package. Sets aliases
    for receiver/scrapererror so that dependent code in contrib and
    elsewhere can be updated
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Relates to #11003
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    included unit/integration tests should suffice
    <!--Describe the documentation added.-->
    #### Documentation
    changelog yaml
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
