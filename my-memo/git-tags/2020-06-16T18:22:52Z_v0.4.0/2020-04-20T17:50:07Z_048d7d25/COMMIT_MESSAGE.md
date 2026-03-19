commit 048d7d2578249a4cd1ad083568688fc389792ea4
Author: Pavol Loffay <ploffay@redhat.com>
Date:   Mon Apr 20 19:50:07 2020 +0200

    Use defaults in Jaeger remote sampling. (#849)
    
    * use default values for remote sampling endpoints
    * use default sampling strategy (in-memory) if no file/url is provided
    
    Signed-off-by: Pavol Loffay <ploffay@redhat.com>
