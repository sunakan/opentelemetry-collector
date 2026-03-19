commit d925148a01ff32bcfdae567595b2da5f3ce55d46
Author: JBD <jbd@amazon.com>
Date:   Thu Aug 19 17:19:25 2021 -0700

    Clarify that Watchable is not used for continuous watching (#3588)
    
    * Clarify that Watchable is not used for continous watching of config resoruces
    
    Watching is a loaded term and gives an impression that it's a mechanism that could be used to continously report new configuration changes. We could have called this interface a Waiter but it's too late to make changes, hence adding some comments to clarify it's not used for continous config updates.
    
    * Update service/parserprovider/provider.go
    
    Co-authored-by: Paulo Janotti <pjanotti@splunk.com>
    
    * Update provider.go
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
    Co-authored-by: Paulo Janotti <pjanotti@splunk.com>
