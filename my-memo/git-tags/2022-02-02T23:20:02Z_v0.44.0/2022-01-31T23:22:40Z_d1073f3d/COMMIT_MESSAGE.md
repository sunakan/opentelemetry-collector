commit d1073f3d7cbdd9c7808de6622d486a6f59767877
Author: Patryk Kwiatek <patryk@kwiatek.xyz>
Date:   Tue Feb 1 00:22:40 2022 +0100

    Return an error in service.NewConfigProvider if there is no configLocations (#4734)
    
    * Deprecate service.NewConfigProvider
    
    * Remove references to NewConfigProvider due to its deprecation
    
    * Deprecate service.NewDefaultConfigProvider
    
    * Update config_provider.go
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
