commit 0b88ff96861bd1c87ab909c6cf71836498cd68c9
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Jun 21 14:33:15 2023 -0700

    [chore] remove unnecessary additional tools (#7852)
    
    This is replicating the setup in the contrib repo that doesn't use
    go-acc & gcovmerge for coverage. It uses tools built into go 1.20
    instead
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
