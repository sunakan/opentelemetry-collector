commit 121257178efdc725a1dcca436279991a62be36ee
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Aug 9 10:17:42 2022 -0700

    Enforce scheme name restrictions to all confmap.Provider implementations. (#5861)
    
    Currently was documented that the format should be compatible with the URI definition (see https://datatracker.ietf.org/doc/html/rfc3986),
    but the scheme name restriction was not copied from the RFC, and no tests to enforce. This PR clearly documents the characters allowed in the scheme name and add confmaptest helper func to test for valid scheme names.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
