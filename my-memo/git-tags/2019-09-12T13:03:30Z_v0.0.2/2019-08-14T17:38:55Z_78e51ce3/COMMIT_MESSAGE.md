commit 78e51ce378f998f691073233729b44b921fe4140
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Aug 14 10:38:55 2019 -0700

    Move zipkin scribe receiver to contrib (#258)
    
    We found few usages for this protocol and since it is legacy for quite some time it doesn't make sense to release it in the new OTelSvc. Moving it to contrib.
