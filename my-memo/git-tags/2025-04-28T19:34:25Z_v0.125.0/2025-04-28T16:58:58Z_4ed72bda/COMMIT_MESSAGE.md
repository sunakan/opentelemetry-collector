commit 4ed72bda40bd09a2db46a57363a6463ade7a8aa7
Author: Matthew Sainsbury <matthew@sainsbury.io>
Date:   Mon Apr 28 09:58:58 2025 -0700

    add storage full error to xextension/storage (#12925)
    
    #### Description
    This adds an error for when the storage extension runs out of space.
    Extensions can return this error when it's not possible to store data
    because the maximum allowable/possible space has been reached.
    
    #### Link to tracking issue
    Fixes #12634
    
    #### Testing
    I have been working on the filestorage extension and have a draft PR
    that uses this error:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/39667
