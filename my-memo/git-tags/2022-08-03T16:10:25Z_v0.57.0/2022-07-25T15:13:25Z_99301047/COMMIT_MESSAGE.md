commit 993010478c329afe3b674107059c386a7bf40d21
Author: James Peach <jpeach@cloudflare.com>
Date:   Tue Jul 26 01:13:25 2022 +1000

    Fail when the builder can't load its configuration. (#5731)
    
    If the builder can't load its build configuration file, it logs an error
    and continues. This results in building a collector that is not the one
    the user specified. Exit with a fatal error instead.
    
    Signed-off-by: James Peach <jpeach@cloudflare.com>
