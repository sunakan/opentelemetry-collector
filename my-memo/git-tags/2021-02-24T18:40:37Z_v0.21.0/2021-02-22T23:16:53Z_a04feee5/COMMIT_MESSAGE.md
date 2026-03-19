commit a04feee5a0cbc1faf1a9e62cf85006d8424328cf
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Feb 22 15:16:53 2021 -0800

    Remove accessors for deprecated status code, fix receiver logic (#2521)
    
    * Remove accessors for deprecated status code, fix receiver logic
    
    The previous logic was to ignore deprecated if received non unset for new status code,
    but if downstream a service is not upgraded it should see the deprecated status set correctly.
    
    This change is to be consistent with `SetCode`.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Add changelog entry
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
