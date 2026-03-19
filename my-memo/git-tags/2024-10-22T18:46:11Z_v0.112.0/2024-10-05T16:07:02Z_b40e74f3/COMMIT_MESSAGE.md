commit b40e74f3aed9884be6c2b20de8ee862079788e90
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Sat Oct 5 09:07:02 2024 -0700

    (exporterhelper) Retry sender: fail request if context timeout < next retry (#11331)
    
    #### Description
    The retry sender will delay until the context is canceled, where instead
    it could fail fast with a transient error and a clear message that no
    more retries are possible given the configuration.
    
    #### Link to tracking issue
    Part of #11183
    
    #### Testing
    One new test.
