commit 0ddedf00d81bf149a9a7a498da5c3703b77b0c6c
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Sep 9 11:16:06 2024 -0700

    [service] move useOtelWithSDKConfigurationForInternalTelemetry gate to beta (#11091)
    
    #### Description
    
    This configuration of the internal collector telemetry has been using
    the SDK configuration for some time. Moving this gate from alpha to
    beta.
    
    #### Link to tracking issue
    Related to #6629
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
