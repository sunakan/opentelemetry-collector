commit c2224e6e1924ab555df95122fb6e966dcc6af663
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Nov 25 15:20:20 2025 +0100

    [chore] Fix BenchmarkProfilesUsage (#14215)
    
    #### Description
    
    The `Duration` and `SetDuration` methods were deprecated in #14188, and
    their implementations are now no-ops, causing [a benchmark to
    fail](https://github.com/open-telemetry/opentelemetry-collector/actions/runs/19668308741/job/56330560134).
    I updated the benchmark to use `DurationNano` and `SetDurationNano`
    instead.
