commit 24559e57977c2830d79140f0fd186273292a3e12
Author: Vinn Sunder <51945617+vignesh-codes@users.noreply.github.com>
Date:   Fri Oct 10 11:30:41 2025 -0400

    Added type check before processing for sum metrics (#13780)
    
    #### Description
    This PR fixes a nil pointer dereference crash in the pdata benchmarks
    when running `BenchmarkMetricsUsage` and other benchmarks in the pmetric
    package.
    
    It was happening because the benchmark was calling sum related methods
    on all metrics in the test data including the metrics regardless of its
    type.
    
    Also, it mentions not to use this method unless its of type
    MetricTypeSum here
    
    https://github.com/open-telemetry/opentelemetry-collector/blob/main/pdata/pmetric/generated_metric.go#L138
    
    Changes include:
    - Added type check `if m.Type() == MetricTypeSum` to only process sum
    specific operations on metrics that are actually of type Sum
    - This prevents the nil pointer dereference while maintaining the
    benchmark's intended functionality
    
    #### Link to tracking issue
    Fixes
    [#13718](https://github.com/open-telemetry/opentelemetry-collector/issues/13718)
    
    #### Testing
    - `BenchmarkMetricsUsage` now runs without crashing
    
    #### Documentation
