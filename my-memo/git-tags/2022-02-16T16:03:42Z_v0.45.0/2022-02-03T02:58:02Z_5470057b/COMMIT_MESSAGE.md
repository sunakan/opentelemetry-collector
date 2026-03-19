commit 5470057bdfacd9821572bbb2c7cd00e5e4fae8e9
Author: jack-berg <34418638+jack-berg@users.noreply.github.com>
Date:   Wed Feb 2 20:58:02 2022 -0600

    Make gzip default for otlp gRPC/HTTP exporters (#4632)
    
    Change OTLP gRPC exporter to use `gzip` compression by default. If this is merged, I can followup with the OTLP HTTP exporter to use `gzip` by default as well.
    
    **Link to tracking Issue:**
    #4587
    
    **Testing:**
    - Added benchmarks comparing different compression algorithms.
    - Updated `configgrpc_test.go` to validate default behavior
    
    **Documentation:**
    Added details to `/config/configgrpc/README.md` with benchmark results and notes on compression.
