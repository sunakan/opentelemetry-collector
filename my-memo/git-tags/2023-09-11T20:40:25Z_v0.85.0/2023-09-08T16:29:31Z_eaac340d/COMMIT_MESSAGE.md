commit eaac340d0bc3d80a2ba7b08153de690ad9dc3946
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Sep 8 09:29:31 2023 -0700

    [chore] update otel go 1.17 (#8299)
    
    Updating dependencies. Includes a workaround #8346, which causes the
    collector to ignore instrument name errors returned from instantiating
    instruments in otel.
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
