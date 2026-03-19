commit 14c39c3bcfd14b17b04905cd89671212b993fdfc
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Aug 15 14:45:26 2025 -0700

    Deprecate Profiles.ProfilesDictionary in favor of Profiles.Dictionary. (#13644)
    
    This removes unnecessary duplication of "Profiles" prefix when the
    struct/package has already profile in it, also brings consistency with
    proto definition.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
