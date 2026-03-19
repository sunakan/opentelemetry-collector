commit ed5efb7a6b8484fc0a603857074bbf9e5c8bb025
Author: alrex <aboten@lightstep.com>
Date:   Thu Jul 15 13:16:28 2021 -0700

    fix DoubleExemplar mention in sed file (#3632)
    
    This changes the slice of pointers into a slice of values, regenerated
    pdata accordingly.
