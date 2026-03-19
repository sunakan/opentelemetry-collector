commit 9868a9b98f03148634ad3b0fc5907353351767f5
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Jun 12 11:15:04 2020 -0700

    Use ResourceCheckPeriod as logging intervals in test bed (#1115)
    
    If ResourceCheckPeriod is more than 1 second, reported resource values are not being changed during each ResourceCheckPeriod, so logging every second doens't provide much value, but makes it hard to read logs in long run running tests
