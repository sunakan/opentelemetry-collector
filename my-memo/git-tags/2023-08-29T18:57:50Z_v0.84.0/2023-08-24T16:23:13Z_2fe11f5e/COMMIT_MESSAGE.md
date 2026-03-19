commit 2fe11f5eb8b4f39e3090d6e83319a86a413d24cc
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Thu Aug 24 09:23:13 2023 -0700

    Allow any registered gRPC load balancer to be used (#8262)
    
    gRPC-Go's `balancer` package includes a static
    registration mechanism and a way to inspect whether a balancer name is
    registered. We should use this mechanism instead of hard-coding an
    allowlist of balancer names.
    
    Custom collector configurations may have additional balancers linked in,
    and we should allow them to be used.
