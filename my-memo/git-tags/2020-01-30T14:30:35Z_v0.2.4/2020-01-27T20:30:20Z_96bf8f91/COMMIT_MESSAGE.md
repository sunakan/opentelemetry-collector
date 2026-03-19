commit 96bf8f9189cbc2bcfa31908eefc0c221fea7f506
Author: Joe Elliott <number101010@gmail.com>
Date:   Mon Jan 27 15:30:20 2020 -0500

    Pass Jaeger references with a 0 SpanID and TraceID (#513)
    
    * Added support for nil trace/span ID and tests
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Reverted attempt to handle nil trace id
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Removed ErrNilTraceID and ErrNilSpanID and treat nil ids as 0
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Revert "Removed ErrNilTraceID and ErrNilSpanID and treat nil ids as 0"
    
    This reverts commit d621720d2763afc5500b36a403fd0e54d4c2179e.
    
    * Return 0s for byteToTrace/SpanID
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added tests for all 0s trace and span id
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Corrected expected value in test for new logic
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
