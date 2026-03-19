commit 277aa581adcf1322274e28bd0a4ce24ceb11b44d
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Wed Apr 15 16:51:27 2020 -0700

    Switch batch_processor to internal data model (#832)
    
    New internal data structure allows to batch together traces from different resources. This simplify batching a lot. This commit removes most of the functionality for handling many batches per node and uses only one batch with one ticker.
