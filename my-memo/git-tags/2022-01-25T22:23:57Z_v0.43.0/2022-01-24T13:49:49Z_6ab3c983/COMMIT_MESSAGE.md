commit 6ab3c983bbfbda567f4372774abc7238680fb22f
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jan 24 05:49:49 2022 -0800

    Enable end users to provide multiple files for config location (#4727)
    
    Restriction (compatible with `--set`): Per flag entry can be defined only one location, to define multiple locations use multiple flag entries:
    
    ```bash
    ./otelcol --cofig=file:/path/to/first/file --config=file:/path/to/second/file
    ```
