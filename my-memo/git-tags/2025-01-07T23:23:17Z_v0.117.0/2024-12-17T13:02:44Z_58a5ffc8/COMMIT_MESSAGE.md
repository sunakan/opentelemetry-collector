commit 58a5ffc888fcb0729ed997a3c2020be69f0eeb10
Author: Matthew Wear <matthew.wear@gmail.com>
Date:   Tue Dec 17 05:02:44 2024 -0800

    [service/internal] Allow components to transition from PermanentError to Stopping (#10958)
    
    #### Description
    In #10058 I mentioned:
    
    > There is a tangentially related issue with PermanentErrors and the
    underlying finite state machine that governs transitions between
    statuses. Currently, a PermanentError is a final state. That is, once a
    component enters this state, no further transitions are allowed. In
    light of the work I did on the alternative health check extension, I
    believe we should allow a transition from PermanentError to Stopping to
    consistently prioritize lifecycle events for components. This transition
    also make sense from a practical perspective. A component in a
    PermanentError state is one that has been started and is running,
    although in a likely degraded state. The collector will call shutdown on
    the component (when the collector is shutting down) and we should allow
    the status to reflect that.
    
    This PR makes the suggested change and updates the documentation to
    reflect that. As this is an internal change, I have not included a
    changelog. Also note, we can close #10058 after this as we've already
    removed status aggregation from core during the recent component status
    refactor.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #10058
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    units
    
    <!--Describe the documentation added.-->
    #### Documentation
    Updated docs/component-status.md and associated diagram.
    
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    Co-authored-by: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
    Co-authored-by: Antoine Toulme <atoulme@splunk.com>
