commit 3ac2d3fee5bfd560b73fef0fdb74cf6f5793f149
Author: JBD <jbd@golang.org>
Date:   Mon Oct 15 17:41:21 2018 -0700

    Minimize the Docker image (#84)
    
    * Minimize the Docker image
    
    Use a builder stage to minimize the final Docker image.
    
    docker run -v config.yaml:/config.yaml  -p 55678:55678  <image>
    
    Fixes #73.
    
    * Use Go.11
