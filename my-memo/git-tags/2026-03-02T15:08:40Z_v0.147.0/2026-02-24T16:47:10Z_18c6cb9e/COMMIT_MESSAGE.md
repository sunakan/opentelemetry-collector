commit 18c6cb9e7b3b2c4cfc30ce443b8cbf01254df3d0
Author: am1r021 <indigophi@protonmail.com>
Date:   Tue Feb 24 09:47:10 2026 -0700

    [fix] set schemaurl in batchprocessor (#14620)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    `batchprocessor` could drop resource/scope `SchemaURL` during partial
    batch splits. This causes exported data to lose schema context. This
    change fixes it by copying `SchemaURL` on resource and scope containers
    in partial split logic for traces, metrics, and logs.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #
    #12279
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    A unit test has been added for partial splits on metrics, traces, and
    logs to check if output still contains `schemaUrl`.
    
    <!--Describe the documentation added.-->
    #### Documentation
    N/A
