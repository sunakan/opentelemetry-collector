commit cd5df21b6cdbb791da8e4e1ee4793f1893e3d12e
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Apr 11 09:05:52 2022 -0700

    Add a NewConfigProvider that uses options for settings, and does input validation (#4936)
    
    * Change deprecated NewConfigProvider to use options and do input validation
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Revert deprecation of WithConfigUnmarshaler
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Change to use settings for the ConfigProvider
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Update service/config_provider.go
    
    Co-authored-by: Alex Boten <alex@boten.ca>
