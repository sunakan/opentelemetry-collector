commit 27d3efb1e065367f8020cd4edbdf9d7cc637bd13
Author: Joshua MacDonald <jmacd@users.noreply.github.com>
Date:   Fri Apr 7 15:35:55 2023 -0700

    Batch processor support for split-only configuration (#7509)
    
    Implement the fixes proposed in #7508. Otherwise, using a batchprocessor with Config{} passes validation but acts badly at runtime there is both a zero-duration timer and the call to sendItems never returns, constantly sending empty batches.
