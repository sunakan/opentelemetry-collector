commit a35a5fa5a821f0da166e0c13008f02cc786eaca8
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Tue Feb 12 18:46:58 2019 -0800

    receiver/opencensus: fix crash on unstarted receiver.Stop
    
    If an unstarted OpenCensus receiver was Stop()-ed, it would
    undefensively invoke .serverHTTP.Close()
    which would cause a nil dereference panic, moreover in situations
    where only unrelated receivers were explicitly started.
    
    Fixes #379
