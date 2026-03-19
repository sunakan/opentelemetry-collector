commit 07de3732b95664c0a54dfd56a718049163022c18
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Apr 27 11:29:42 2022 -0700

    Extract the config.Map resolving logic in a separate struct (#5248)
    
    * Extract the config.Map resolving logic in a separate struct
    
    This is an effort to help maintainers/approvers better understand how the configuration resolving logic works.
    In this PR all the logic to call into providers, watch for changes, and apply converters is extracted in a separate struct and isolated from other logic of unmarshaling, etc.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Move MapResolver as private struct in service package, avoids duplicate settings for the moment
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
