commit 4fb7c24ebecc812dc5d6703ab4662c71a43e24cd
Author: Roger Coll <roger.coll@elastic.co>
Date:   Fri Apr 11 09:44:47 2025 +0200

    add GetFactory interface to hostcapabilities package (#12789)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    The GetFactory method is used by a few receivers in the contrib package
    (e.g. receiver_creator). This PR adds a new interface to the
    hostcapabilities package so it can be cast correctly from other
    packages/components.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Jade Guiton <jade.guiton@datadoghq.com>
