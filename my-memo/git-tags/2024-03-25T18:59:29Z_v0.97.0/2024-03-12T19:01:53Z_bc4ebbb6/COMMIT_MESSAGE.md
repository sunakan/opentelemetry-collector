commit bc4ebbb66fe0953437d92ada00a1be67c3c1d6d6
Author: Carson Ip <carsonip@users.noreply.github.com>
Date:   Wed Mar 13 03:01:53 2024 +0800

    [exporterhelper] Fix persistent queue size backup on reads (#9740)
    
    **Description:**
    
    Persistent queue size backup on reads should depend on readIndex, not
    writeIndex.
