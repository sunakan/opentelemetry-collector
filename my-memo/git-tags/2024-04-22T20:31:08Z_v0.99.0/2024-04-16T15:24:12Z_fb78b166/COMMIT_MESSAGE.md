commit fb78b1669a45cde13160b6f3ff692997a134e3d8
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue Apr 16 08:24:12 2024 -0700

    [service] fix bug in sampler (#9968)
    
    The configuration for the recordSampler has multiple configurations for
    the RemoteParentSampler which doesn't appear to make any sense. I
    suspect the original intent was to configure both local and remote
    samplers with sampled and not sampled.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
