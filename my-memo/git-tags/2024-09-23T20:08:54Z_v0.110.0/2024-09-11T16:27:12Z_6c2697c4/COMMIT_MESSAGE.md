commit 6c2697c4453c8ecb8416a9854abbe65deb7517f9
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Sep 11 18:27:12 2024 +0200

    [exporterhelper] Rename Timeout/QueueSettings to Config (#11132)
    
    #### Description
    
    This PR renames `TimeoutSettings` and `QueueSettings` (as well as the
    corresponding `NewDefault` functions) to `TimeoutConfig` and
    `QueueConfig`, for naming consistency reasons.
    
    The previous struct/function names are kept as deprecated aliases of the
    new ones for now.
    
    #### Link to tracking issue
    
    Updates #6767  (edit: reworded by @mx-psi)
    
    #### Testing
    
    No behavior changes were made, so no additional testing should be
    necessary.
    
    The references to the aforementioned structs/functions in existing tests
    have been renamed as well. This means the deprecated function aliases
    are not tested, lowering the coverage a bit.
    
    #### Documentation
    
    The new functions are documented identically to the previous ones.
