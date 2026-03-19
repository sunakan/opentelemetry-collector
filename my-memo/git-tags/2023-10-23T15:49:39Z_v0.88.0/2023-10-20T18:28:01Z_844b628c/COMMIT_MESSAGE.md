commit 844b628cf79097173a15d6e74bb5022d5d60c966
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Oct 20 11:28:01 2023 -0700

    [exporterhelper] make enqueue failures available (#8674)
    
    These metrics were only exporter either via OC or via the prometheus
    exporter. Fixes #8673
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
