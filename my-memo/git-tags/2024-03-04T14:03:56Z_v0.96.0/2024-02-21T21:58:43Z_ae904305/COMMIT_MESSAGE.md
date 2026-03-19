commit ae90430559597f83193258ec8a2789626d6d23b0
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Wed Feb 21 14:58:43 2024 -0700

    [client] Fix race condition in `Metadata.Get` (#9595)
    
    **Description:**
    Fixes a bug where `Get` was not thread safe.
    
    **Link to tracking Issue:** <Issue number if applicable>
    Closes
    https://github.com/open-telemetry/opentelemetry-collector/issues/9594
    
    **Testing:** <Describe what testing was performed and which tests were
    added.>
    Tested locally
