commit fbdbd5090ab1e57a09b1f6560c1ed112ec419ddc
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Mon Aug 26 16:37:11 2024 -0700

    [scraperhelper] deprecate NewObsReport, ObsReport, ObsReportSettings (#10959)
    
    These functions and structs doesn't appear used in any of the components
    in either core or contrib. Deprecating to remove the surface area of the
    package.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
