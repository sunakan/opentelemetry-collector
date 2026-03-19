commit 7a8954f6b83851c532fc4190ee5b17c8584a2671
Author: Raj Nishtala <113392743+rnishtala-sumo@users.noreply.github.com>
Date:   Fri Apr 12 18:43:49 2024 -0400

    Disable concurrency in zstd and add Benchmark tests for it (#9749)
    
    **Description:** zstd benchmark tests added
    The goal of this PR is to disable concurrency in zstd compression to
    reduce its memory footprint and avoid a known issue with goroutine
    leaks. Please see - https://github.com/klauspost/compress/issues/264
    
    **Link to tracking Issue:**
    https://github.com/open-telemetry/opentelemetry-collector/issues/8216
    
    **Testing:** Benchmark test results below
    ```
    BenchmarkCompression/zstdWithConcurrency/compress-10               21392             55855 ns/op        187732.88 MB/s   2329164 B/op         28 allocs/op
    BenchmarkCompression/zstdNoConcurrency/compress-10                 29526             39902 ns/op        262787.42 MB/s   1758988 B/op         15 allocs/op
    input => 10.00 MB
    ```
