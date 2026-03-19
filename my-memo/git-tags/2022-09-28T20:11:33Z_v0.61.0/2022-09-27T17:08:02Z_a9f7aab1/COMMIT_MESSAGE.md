commit a9f7aab1ecf50c5959ab66c8298997b6f8344b92
Author: James Peach <jpeach@cloudflare.com>
Date:   Wed Sep 28 03:08:02 2022 +1000

    Drop builtin builder configuration integration tests. (#6157)
    
    Drop the integration tests for the builtin builder configuration.
    We assume that it is a working config because it is generated from
    with the source tree and should be covered by collector tests. Add a
    unit test to ensure some basic sanity for the builtin configuration.
    
    This fixes #6076.
    
    Signed-off-by: James Peach <jpeach@cloudflare.com>
    
    Signed-off-by: James Peach <jpeach@cloudflare.com>
