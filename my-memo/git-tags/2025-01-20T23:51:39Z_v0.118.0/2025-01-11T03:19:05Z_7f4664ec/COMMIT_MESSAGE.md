commit 7f4664ec75a6962db15d5f889bcfefc0e2132705
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Jan 10 19:19:05 2025 -0800

    Change the memory queue implementation to not pre-allocate capacity objects. (#12070)
    
    Change the sized channel to use a "fifo" queue without pre-allocated
    capacity:
    * Allows us to soon allow different sizers like bytes, which otherwise
    would pre-allocate way too much memory. E.g. if configure with a limit
    of 1GB would pre-allocate 16GB for the buffered channel only.
    * Does not pre-allocate memory when not needed.
    
    **Before:**
    ```
    cpu: Apple M2 Max
    BenchmarkOffer
    BenchmarkOffer/requests_based
    BenchmarkOffer/requests_based-12                 5559658               207.3 ns/op             0 B/op          0 allocs/op
    BenchmarkOffer/items_based
    BenchmarkOffer/items_based-12                    6025567               209.4 ns/op             0 B/op          0 allocs/op
    ```
    **After:**
    ```
    cpu: Apple M2 Max
    BenchmarkOffer
    BenchmarkOffer/requests_based
    BenchmarkOffer/requests_based-12                 4904857               224.3 ns/op            48 B/op          1 allocs/op
    BenchmarkOffer/items_based
    BenchmarkOffer/items_based-12                    5470143               229.9 ns/op            48 B/op          1 allocs/op
    ```
    Overall there is a ~20ns performance downgrade but this is expected
    since no memory pre-allocation.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
