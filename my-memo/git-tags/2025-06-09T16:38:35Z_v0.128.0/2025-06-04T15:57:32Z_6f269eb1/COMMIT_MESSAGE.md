commit 6f269eb15365bcec29ae89baae348f6001aa6a7e
Author: Alan Lee <lzh.shap@gmail.com>
Date:   Wed Jun 4 23:57:32 2025 +0800

    [chore] Unify persistentQueue fields into QueueMetadata (#13140)
    
    Embed QueueMetadata directly into persistentQueue, replacing the
    scattered metadata fields.
    
    1. Add QueueMetadata as a member of persistentQueue.
    2. Delete redundant fields (queueSize, readIdx, writeIdx, …).
    
    Relates to #13126
