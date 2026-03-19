commit 9b7718db8d38d39441aa4f18f8a692804457dd40
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Mon Nov 26 18:57:24 2018 -0800

    cmd/ocagent: fix Zipkin logical conflict detection typo
    
    The Zipkin logical conflict detection had 2 errors:
    a) By mistake, it resolved the receiver{Host, Port}
    from the exporterHostPort address
    b) During IP resolution to check say if "localhost" and "//zipkin"
    were the same, if the results were the same, the ports weren't
    checked for equivalence hence if we had:
        "localhost:9410" and "127.0.0.1:9411"
    it would incorrectly report a logical conflict.
    
    Added a regression test as well.
    
    Fixes #233
