commit dae1d8edf4277f0e011a30521e2471a496a6363e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Mar 28 09:33:11 2025 -0700

    [builder] Remove deprecated OtelColVersion, already an error if used (#12757)
    
    As titled said, this is not a breaking change, since we only are going
    to return a different error.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
