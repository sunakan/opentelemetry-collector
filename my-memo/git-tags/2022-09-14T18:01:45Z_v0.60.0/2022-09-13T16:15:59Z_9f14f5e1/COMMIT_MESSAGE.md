commit 9f14f5e13c64abda1946033230d41c3e1bdba718
Author: James Peach <jpeach@cloudflare.com>
Date:   Wed Sep 14 02:15:59 2022 +1000

    Add a default build configuration to ocb. (#5752)
    
    Embed the build configuration that is used to build otelcorecol into ocb
    so that end users can easily generate a useful collector. This makes the
    `--config` flag optional again.
    
    Signed-off-by: James Peach <jpeach@cloudflare.com>
    
    Signed-off-by: James Peach <jpeach@cloudflare.com>
