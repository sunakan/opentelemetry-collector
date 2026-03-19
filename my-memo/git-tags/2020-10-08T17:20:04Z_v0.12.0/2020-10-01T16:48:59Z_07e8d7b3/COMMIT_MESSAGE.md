commit 07e8d7b3fe56bb345fc198d34f78e3a535ad77ed
Author: Chris Smith <chris.smith@zocdoc.com>
Date:   Thu Oct 1 12:48:59 2020 -0400

    tailsampler: Combine batches of spans into a single batch (#1864)
    
    * tailsampler: Combine batches of spans into a single batch so that downstream processors may operate on the entire trace
    
    * use bytes comparison for traceids
    
    * make test more clear and explicitly test the spanids
