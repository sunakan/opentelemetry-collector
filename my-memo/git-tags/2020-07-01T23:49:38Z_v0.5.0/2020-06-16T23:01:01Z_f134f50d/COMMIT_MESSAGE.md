commit f134f50df819ea09b0274e5242352d46ccba8afa
Author: Liam White <liam@tetrate.io>
Date:   Tue Jun 16 16:01:01 2020 -0700

    Handle overlapping metrics from different jobs in prometheus exporter (#1096)
    
    This commit fixes the following bug:
    
    **The bug**
    if otel-collector/agent scrapes from two endpoints which emits metrics of the same name(even with different label), it seems to only export metrics from one of the endpoints in a random fashion.
    
    **Steps to reproduce**
    1. modified the [demo example](https://github.com/open-telemetry/opentelemetry-collector/tree/master/examples/demo) in [this commit](https://github.com/jhengy/opentelemetry-collector/commit/933679deaffbafe05dcdbbb18370ac01cdad8004)
      - create a cloned `metrics-load-generator2` which emits exactly the same metrics as `metrics-load-generator` except the `source` label
    2. use [an older image](https://github.com/jhengy/opentelemetry-collector/commit/bad29d9ea14fd9afbb40bab54277a6e6f0e9e97a) (from 28 May 2020) due to the problem encountered with the latest otel-collector docker image, i.e. details can be found in [this issue](https://github.com/open-telemetry/opentelemetry-collector/issues/1075)
    3. run the modified demo example
    - `cd exaples/demo`
    - `docker-compose up`
    - `curl localhost:8889/metrics`
    
    **What did you expect to see?**
    Will see metrics from both metrics-load-generator(source=source1) and metrics-load-generator2( source=source2)
    
    **What did you see instead?**
    At anytime, only see metrics from one of the sources.
    Sometimes seeing this (only observe metrics from the metrics-load-generator service):
    ```
    # HELP promexample_opdemo_latency The various latencies of the methods
    # TYPE promexample_opdemo_latency histogram
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="10"} 86
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="50"} 448
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="100"} 783
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="200"} 802
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="400"} 846
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="800"} 939
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="1000"} 973
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="1400"} 1000
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="2000"} 1007
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="5000"} 1040
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="10000"} 1088
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="15000"} 1122
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source1",le="+Inf"} 1132
    promexample_opdemo_latency_sum{client="cli",label1="value1",method="repl",source="source1"} 1.2317093098059976e+06
    promexample_opdemo_latency_count{client="cli",label1="value1",method="repl",source="source1"} 1132
    # HELP promexample_opdemo_line_counts The counts of the lines in
    # TYPE promexample_opdemo_line_counts counter
    promexample_opdemo_line_counts{client="cli",label1="value1",method="repl",source="source1"} 3424
    # HELP promexample_opdemo_line_lengths The lengths of the various lines in
    # TYPE promexample_opdemo_line_lengths histogram
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source1",le="10"} 27
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source1",le="20"} 61
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source1",le="50"} 155
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source1",le="100"} 324
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source1",le="150"} 481
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source1",le="200"} 662
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source1",le="500"} 1669
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source1",le="800"} 2722
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source1",le="+Inf"} 3424
    promexample_opdemo_line_lengths_sum{client="cli",label1="value1",method="repl",source="source1"} 1.7351559999999993e+06
    promexample_opdemo_line_lengths_count{client="cli",label1="value1",method="repl",source="source1"} 3424
    # HELP promexample_opdemo_process_counts The various counts
    # TYPE promexample_opdemo_process_counts counter
    promexample_opdemo_process_counts{client="cli",label1="value1",method="repl",source="source1"} 1132
    ```
    sometimes seeing this(only see metrics from the metrics-load-generator2 service):
    ```
    # HELP promexample_opdemo_latency The various latencies of the methods
    # TYPE promexample_opdemo_latency histogram
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="10"} 100
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="50"} 526
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="100"} 937
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="200"} 960
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="400"} 1013
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="800"} 1122
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="1000"} 1171
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="1400"} 1206
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="2000"} 1214
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="5000"} 1257
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="10000"} 1308
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="15000"} 1343
    promexample_opdemo_latency_bucket{client="cli",label1="value1",method="repl",source="source2",le="+Inf"} 1352
    promexample_opdemo_latency_sum{client="cli",label1="value1",method="repl",source="source2"} 1.3510892105500018e+06
    promexample_opdemo_latency_count{client="cli",label1="value1",method="repl",source="source2"} 1352
    # HELP promexample_opdemo_line_counts The counts of the lines in
    # TYPE promexample_opdemo_line_counts counter
    promexample_opdemo_line_counts{client="cli",label1="value1",method="repl",source="source2"} 4113
    # HELP promexample_opdemo_line_lengths The lengths of the various lines in
    # TYPE promexample_opdemo_line_lengths histogram
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source2",le="10"} 38
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source2",le="20"} 92
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source2",le="50"} 211
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source2",le="100"} 419
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source2",le="150"} 626
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source2",le="200"} 814
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source2",le="500"} 2025
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source2",le="800"} 3270
    promexample_opdemo_line_lengths_bucket{client="cli",label1="value1",method="repl",source="source2",le="+Inf"} 4113
    promexample_opdemo_line_lengths_sum{client="cli",label1="value1",method="repl",source="source2"} 2.0698130000000026e+06
    promexample_opdemo_line_lengths_count{client="cli",label1="value1",method="repl",source="source2"} 4113
    # HELP promexample_opdemo_process_counts The various counts
    # TYPE promexample_opdemo_process_counts counter
    promexample_opdemo_process_counts{client="cli",label1="value1",method="repl",source="source2"} 1352
    ```
