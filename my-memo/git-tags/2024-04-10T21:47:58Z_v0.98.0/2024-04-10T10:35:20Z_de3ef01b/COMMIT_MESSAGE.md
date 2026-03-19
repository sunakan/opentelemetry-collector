commit de3ef01bff4f1e4db0eee94abce862c66582f208
Author: Shaunak Kashyap <ycombinator@gmail.com>
Date:   Wed Apr 10 03:35:20 2024 -0700

    [service] Validate pipeline type against component types (#9257)
    
    **Description:** <Describe what has changed.>
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    
    This change adds another layer of validation to pipelines. It validates
    that all the components in a pipeline are of the same type as the
    pipeline.
    
    For example, if a `metrics` pipeline contains a `traces`-only receiver,
    the `otelcol validate -config ...` command will fail.
    
    **Link to tracking Issue:**
    Fixes #8007.
    
    **Testing:**
    Added unit test + existing tests are passing.
    
    **Documentation:**
    godoc.
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
