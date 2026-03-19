commit fd36d05133d0f090bcf037f5ee7ede7b9c1ca8da
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Jul 1 09:04:13 2024 -0700

    [otlpexporter] support validation for dns:// and dns:/// (#10450)
    
    This allows users to continue using the recommended
    dns://authority/host:port notation when needing to specify a custom
    authority.
    
    Fixes #10449
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
    Co-authored-by: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
