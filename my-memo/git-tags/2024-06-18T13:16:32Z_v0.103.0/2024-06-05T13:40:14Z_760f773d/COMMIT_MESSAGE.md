commit 760f773df042305bd2d92e908cedc17957f6c542
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Wed Jun 5 15:40:14 2024 +0200

    [configgrpc] Use own compressors for zstd (#10323)
    
    Uses our own version of the zstd compressor for gRPC servers. The code
    for it is based on the gzip compressor that comes built-in with gRPC.
    
    Benchmarks before this PR:
    ```
    Running tool: /usr/bin/go test -benchmem -run=^$ -bench ^BenchmarkCompressors$ go.opentelemetry.io/collector/config/configgrpc
    
    sm_log_requestgoos: linux
    goarch: amd64
    pkg: go.opentelemetry.io/collector/config/configgrpc
    cpu: 11th Gen Intel(R) Core(TM) i7-11800H @ 2.30GHz
    BenchmarkCompressors/sm_log_request/raw_bytes_160/compressed_bytes_162/compressor_gzip-16                  71594             19066 ns/op             615 B/op          4 allocs/op
    sm_log_requestBenchmarkCompressors/sm_log_request/raw_bytes_160/compressed_bytes_159/compressor_zstd-16                   151503              8544 ns/op             640 B/op          6 allocs/op
    sm_log_requestBenchmarkCompressors/sm_log_request/raw_bytes_160/compressed_bytes_178/compressor_snappy-16                3632570               303.8 ns/op           304 B/op          3 allocs/op
    md_log_requestBenchmarkCompressors/md_log_request/raw_bytes_242/compressed_bytes_219/compressor_gzip-16                    68114             16938 ns/op             748 B/op          4 allocs/op
    md_log_requestBenchmarkCompressors/md_log_request/raw_bytes_242/compressed_bytes_209/compressor_zstd-16                   138091              8047 ns/op             896 B/op          6 allocs/op
    md_log_requestBenchmarkCompressors/md_log_request/raw_bytes_242/compressed_bytes_260/compressor_snappy-16                3081198               402.5 ns/op           400 B/op          3 allocs/op
    lg_log_requestBenchmarkCompressors/lg_log_request/raw_bytes_4850/compressed_bytes_253/compressor_gzip-16                   43414             27174 ns/op             386 B/op          3 allocs/op
    lg_log_requestBenchmarkCompressors/lg_log_request/raw_bytes_4850/compressed_bytes_216/compressor_zstd-16                  117534              9903 ns/op           10112 B/op          6 allocs/op
    lg_log_requestBenchmarkCompressors/lg_log_request/raw_bytes_4850/compressed_bytes_454/compressor_snappy-16               1000000              1190 ns/op             528 B/op          2 allocs/op
    sm_trace_requestBenchmarkCompressors/sm_trace_request/raw_bytes_231/compressed_bytes_203/compressor_gzip-16                67275             17508 ns/op             700 B/op          4 allocs/op
    sm_trace_requestBenchmarkCompressors/sm_trace_request/raw_bytes_231/compressed_bytes_201/compressor_zstd-16               196862              6137 ns/op             848 B/op          6 allocs/op
    sm_trace_requestBenchmarkCompressors/sm_trace_request/raw_bytes_231/compressed_bytes_220/compressor_snappy-16            3595815               331.7 ns/op           272 B/op          2 allocs/op
    md_trace_requestBenchmarkCompressors/md_trace_request/raw_bytes_329/compressed_bytes_249/compressor_gzip-16                64105             19104 ns/op             844 B/op          4 allocs/op
    md_trace_requestBenchmarkCompressors/md_trace_request/raw_bytes_329/compressed_bytes_256/compressor_zstd-16               169221              6929 ns/op            1120 B/op          6 allocs/op
    md_trace_requestBenchmarkCompressors/md_trace_request/raw_bytes_329/compressed_bytes_279/compressor_snappy-16            2602239               473.0 ns/op           336 B/op          2 allocs/op
    lg_trace_requestBenchmarkCompressors/lg_trace_request/raw_bytes_7025/compressed_bytes_303/compressor_gzip-16               33861             36473 ns/op             904 B/op          4 allocs/op
    lg_trace_requestBenchmarkCompressors/lg_trace_request/raw_bytes_7025/compressed_bytes_258/compressor_zstd-16              107828             10596 ns/op           16832 B/op          6 allocs/op
    lg_trace_requestBenchmarkCompressors/lg_trace_request/raw_bytes_7025/compressed_bytes_591/compressor_snappy-16            725080              1540 ns/op             689 B/op          2 allocs/op
    sm_metric_requestBenchmarkCompressors/sm_metric_request/raw_bytes_183/compressed_bytes_140/compressor_gzip-16              76315             16394 ns/op             496 B/op          4 allocs/op
    sm_metric_requestBenchmarkCompressors/sm_metric_request/raw_bytes_183/compressed_bytes_137/compressor_zstd-16             193314              5957 ns/op             688 B/op          6 allocs/op
    sm_metric_requestBenchmarkCompressors/sm_metric_request/raw_bytes_183/compressed_bytes_152/compressor_snappy-16          3558649               345.2 ns/op           208 B/op          2 allocs/op
    md_metric_requestBenchmarkCompressors/md_metric_request/raw_bytes_376/compressed_bytes_194/compressor_gzip-16              68497             18413 ns/op             699 B/op          4 allocs/op
    md_metric_requestBenchmarkCompressors/md_metric_request/raw_bytes_376/compressed_bytes_198/compressor_zstd-16             177841              6520 ns/op            1136 B/op          6 allocs/op
    md_metric_requestBenchmarkCompressors/md_metric_request/raw_bytes_376/compressed_bytes_222/compressor_snappy-16          2354102               497.4 ns/op           272 B/op          2 allocs/op
    lg_metric_requestBenchmarkCompressors/lg_metric_request/raw_bytes_10991/compressed_bytes_601/compressor_gzip-16            21943             54603 ns/op            1941 B/op          5 allocs/op
    lg_metric_requestBenchmarkCompressors/lg_metric_request/raw_bytes_10991/compressed_bytes_559/compressor_zstd-16            71260             16077 ns/op           25312 B/op          6 allocs/op
    lg_metric_requestBenchmarkCompressors/lg_metric_request/raw_bytes_10991/compressed_bytes_1055/compressor_snappy-16        335415              3026 ns/op            1200 B/op          2 allocs/op
    PASS
    ok      go.opentelemetry.io/collector/config/configgrpc 37.766s
    ```
    
    After this version:
    ```
    Running tool: /usr/bin/go test -benchmem -run=^$ -bench ^BenchmarkCompressors$ go.opentelemetry.io/collector/config/configgrpc
    
    sm_log_requestgoos: linux
    goarch: amd64
    pkg: go.opentelemetry.io/collector/config/configgrpc
    cpu: 11th Gen Intel(R) Core(TM) i7-11800H @ 2.30GHz
    BenchmarkCompressors/sm_log_request/raw_bytes_160/compressed_bytes_162/compressor_gzip-16                  74952             15710 ns/op             603 B/op          4 allocs/op
    sm_log_requestBenchmarkCompressors/sm_log_request/raw_bytes_160/compressed_bytes_159/compressor_zstd-16                   156784              6966 ns/op             208 B/op          2 allocs/op
    sm_log_requestBenchmarkCompressors/sm_log_request/raw_bytes_160/compressed_bytes_178/compressor_snappy-16                2216174               510.4 ns/op           308 B/op          3 allocs/op
    md_log_requestBenchmarkCompressors/md_log_request/raw_bytes_242/compressed_bytes_219/compressor_gzip-16                    68095             18569 ns/op             736 B/op          4 allocs/op
    md_log_requestBenchmarkCompressors/md_log_request/raw_bytes_242/compressed_bytes_209/compressor_zstd-16                   150705              8849 ns/op             294 B/op          2 allocs/op
    md_log_requestBenchmarkCompressors/md_log_request/raw_bytes_242/compressed_bytes_260/compressor_snappy-16                2149710               556.8 ns/op           406 B/op          3 allocs/op
    lg_log_requestBenchmarkCompressors/lg_log_request/raw_bytes_4850/compressed_bytes_253/compressor_gzip-16                   40040             26159 ns/op             368 B/op          3 allocs/op
    lg_log_requestBenchmarkCompressors/lg_log_request/raw_bytes_4850/compressed_bytes_216/compressor_zstd-16                  123043             10254 ns/op             299 B/op          2 allocs/op
    lg_log_requestBenchmarkCompressors/lg_log_request/raw_bytes_4850/compressed_bytes_454/compressor_snappy-16                726780              1457 ns/op             533 B/op          2 allocs/op
    sm_trace_requestBenchmarkCompressors/sm_trace_request/raw_bytes_231/compressed_bytes_203/compressor_gzip-16                64660             18186 ns/op             701 B/op          4 allocs/op
    sm_trace_requestBenchmarkCompressors/sm_trace_request/raw_bytes_231/compressed_bytes_201/compressor_zstd-16               193225              6267 ns/op             273 B/op          2 allocs/op
    sm_trace_requestBenchmarkCompressors/sm_trace_request/raw_bytes_231/compressed_bytes_220/compressor_snappy-16            2925073               418.2 ns/op           276 B/op          2 allocs/op
    md_trace_requestBenchmarkCompressors/md_trace_request/raw_bytes_329/compressed_bytes_249/compressor_gzip-16                61320             20641 ns/op             846 B/op          4 allocs/op
    md_trace_requestBenchmarkCompressors/md_trace_request/raw_bytes_329/compressed_bytes_256/compressor_zstd-16               190965              6440 ns/op             321 B/op          2 allocs/op
    md_trace_requestBenchmarkCompressors/md_trace_request/raw_bytes_329/compressed_bytes_279/compressor_snappy-16            2051575               656.8 ns/op           341 B/op          2 allocs/op
    lg_trace_requestBenchmarkCompressors/lg_trace_request/raw_bytes_7025/compressed_bytes_303/compressor_gzip-16               30097             40680 ns/op             907 B/op          4 allocs/op
    lg_trace_requestBenchmarkCompressors/lg_trace_request/raw_bytes_7025/compressed_bytes_258/compressor_zstd-16              127027              8437 ns/op             363 B/op          2 allocs/op
    lg_trace_requestBenchmarkCompressors/lg_trace_request/raw_bytes_7025/compressed_bytes_591/compressor_snappy-16            716541              1803 ns/op             694 B/op          2 allocs/op
    sm_metric_requestBenchmarkCompressors/sm_metric_request/raw_bytes_183/compressed_bytes_140/compressor_gzip-16              82287             15054 ns/op             496 B/op          4 allocs/op
    sm_metric_requestBenchmarkCompressors/sm_metric_request/raw_bytes_183/compressed_bytes_137/compressor_zstd-16             230558              5470 ns/op             221 B/op          2 allocs/op
    sm_metric_requestBenchmarkCompressors/sm_metric_request/raw_bytes_183/compressed_bytes_152/compressor_snappy-16          2759403               417.1 ns/op           211 B/op          2 allocs/op
    md_metric_requestBenchmarkCompressors/md_metric_request/raw_bytes_376/compressed_bytes_194/compressor_gzip-16              58208             18925 ns/op             702 B/op          4 allocs/op
    md_metric_requestBenchmarkCompressors/md_metric_request/raw_bytes_376/compressed_bytes_198/compressor_zstd-16             199226              6247 ns/op             256 B/op          2 allocs/op
    md_metric_requestBenchmarkCompressors/md_metric_request/raw_bytes_376/compressed_bytes_222/compressor_snappy-16          2065202               609.8 ns/op           276 B/op          2 allocs/op
    lg_metric_requestBenchmarkCompressors/lg_metric_request/raw_bytes_10991/compressed_bytes_601/compressor_gzip-16            20583             59762 ns/op            1945 B/op          5 allocs/op
    lg_metric_requestBenchmarkCompressors/lg_metric_request/raw_bytes_10991/compressed_bytes_559/compressor_zstd-16            98254             13152 ns/op             728 B/op          2 allocs/op
    lg_metric_requestBenchmarkCompressors/lg_metric_request/raw_bytes_10991/compressed_bytes_1055/compressor_snappy-16        389401              3976 ns/op            1209 B/op          2 allocs/op
    PASS
    ok      go.opentelemetry.io/collector/config/configgrpc 40.394s
    ```
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    
    ---------
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
