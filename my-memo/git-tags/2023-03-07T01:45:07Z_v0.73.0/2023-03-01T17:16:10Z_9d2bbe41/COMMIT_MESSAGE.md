commit 9d2bbe41a55080b1627b157e3d8ffd44a73b4644
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Wed Mar 1 12:16:10 2023 -0500

    Remove code path to unused service implementation (#7268)
    
    Follows #7201
    
    The service.graph feature gate is now stable, so it cannot be changed. This PR removes the code path to the previous implementation of the service pipelines since it is now unused. It does not contain any user facing changes. There will be further code to remove but this PR is limited to these initial steps:
    
    - Remove usage of service.graph feature gate (without removing the feature gate itself)
    - Remove service.pipelines interface
