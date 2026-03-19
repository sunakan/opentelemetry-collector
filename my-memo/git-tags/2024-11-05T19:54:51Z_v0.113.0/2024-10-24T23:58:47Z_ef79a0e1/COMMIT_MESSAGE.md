commit ef79a0e1a99b5498f8064b43c2b953dd40439264
Author: Sindy Li <sindy.li@snowflake.com>
Date:   Thu Oct 24 16:58:47 2024 -0700

    [exporterqueue][chore] Moving queue start and shutdown out side of queue consumer (#11534)
    
    #### Description
    
    This PR moves queue start and shutdown outside of queue consumer.
    
    Consumer should be in charge of "consuming" the queue but not managing
    the life cycle.
