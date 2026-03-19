commit bd2cd2941a1841628b56ef0b39f7cfc7213fff85
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Jul 21 23:09:53 2025 +0300

    Bump reflect2 to latest, avoid disable DCE (#13374)
    
    Try bumping reflect2 to latest. Looks like about 300KiB improvement.
    
    **Before:**
    ```
    ls -la bin/otelcorecol_darwin_arm64
    -rwxr-xr-x@ 1 bdrutu  staff  42268226 Jul 10 05:47 bin/otelcorecol_darwin_arm64
    ```
    
    **After:**
    ```
    ls -la bin/otelcorecol_darwin_arm64
    -rwxr-xr-x@ 1 bdrutu  staff  41769970 Jul 21 11:18 bin/otelcorecol_darwin_arm64
    ```
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
