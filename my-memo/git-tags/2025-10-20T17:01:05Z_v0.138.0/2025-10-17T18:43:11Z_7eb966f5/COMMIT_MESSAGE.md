commit 7eb966f5924e9c2485cfbe0138eb56a06fc31dd7
Author: Vihas Makwana <121151420+VihasMakwana@users.noreply.github.com>
Date:   Sat Oct 18 00:13:11 2025 +0530

    [confmap] Fix a potential race condition between provider and resolver (#14018)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    A provider CAN use the `watcher` callback if it detects any config
    changes. Moreover, it can also be called from different goroutine.
    However, resolver's `Shutdown` method closes the `watcher` channel first
    and then proceeds to close the providers.
    
    This results in a race condition/panic:
    - If the provider detects a new change and attempts to call the
    `watcher` callback from another goroutine, which sends the event on an
    already closed channel.
    
    This PR reorders the `Shutdown` method to close the providers first and
    then close the channel. It also documents that it is provider's
    responsibility to close and wait for any goroutines in its `Shutdown`
    method
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
