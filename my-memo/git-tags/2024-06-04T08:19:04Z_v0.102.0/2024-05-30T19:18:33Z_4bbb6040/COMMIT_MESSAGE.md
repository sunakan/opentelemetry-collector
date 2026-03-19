commit 4bbb60402f262214aecacb24839e75159143a43f
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Thu May 30 12:18:33 2024 -0700

    [chore] Remove redundant wait group from a test (#10269)
    
    https://github.com/open-telemetry/opentelemetry-collector/pull/10258/files#r1621017272
    made me wonder if the wait group is really necessary. We have another
    synchronization that waits for at least two requests to enter the merge
    function, which should be enough. So, we don't necessarily need this
    wait group.
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
