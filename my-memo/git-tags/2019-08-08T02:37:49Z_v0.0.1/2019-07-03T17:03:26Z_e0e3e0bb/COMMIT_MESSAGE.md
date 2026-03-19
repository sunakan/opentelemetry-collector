commit e0e3e0bb9cf125c402879df0164fd1cacd769299
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Jul 3 10:03:26 2019 -0700

    Refactor 2 private functions in zipkin exporters (#92)
    
    These 2 functions had error on their return but never returned error. This made confuse on caller sites since it gave the impression that spans could be dropped without proper observability.
