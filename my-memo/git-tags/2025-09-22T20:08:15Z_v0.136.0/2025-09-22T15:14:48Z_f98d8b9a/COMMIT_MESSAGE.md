commit f98d8b9a73fcf8d606c08510241deabe25697ef1
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Sep 22 17:14:48 2025 +0200

    Add "debug merge queue" job (#13820)
    
    #### Description
    
    The condition in the "Merge freeze" CI workflow preventing the "Prepare
    release" PR from blocking itself is no longer working after changes to
    the OTel bot. This PR adds a temporary "Debug merge queue" job, which
    prints the commit name, author name, and author email, to check the new
    correct values for the bot.
    
    #### Link to tracking issue
    Updates #13789
    
    #### Testing
    Hard to test in advance, but the merge queue for this PR should give an
    idea of whether the new job is working.
