commit a1efc0e7fb148845342b903c8c5945cbbc5f6370
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Jul 20 08:07:43 2023 -0700

    [chore] update jsonschema (#8113)
    
    This updates the jsonschema to the latest in main. It additionally adds
    a sed patch for making Headers a map[string]string instead of a
    map[string]interface.
    
    @mx-psi
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
