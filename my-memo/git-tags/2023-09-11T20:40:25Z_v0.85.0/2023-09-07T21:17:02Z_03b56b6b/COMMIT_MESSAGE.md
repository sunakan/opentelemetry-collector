commit 03b56b6bca3fc2fca53a19fea849538de4dfda47
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Sep 7 14:17:02 2023 -0700

    [chore] consistently use multierr in otel instatiation (#8376)
    
    This PR updates the instantation of otel instruments in the batch
    processor to use multierr instead of returning on the first error it
    encounters. This aligns w/ other places in the code where we instatiate
    otel instruments.
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
