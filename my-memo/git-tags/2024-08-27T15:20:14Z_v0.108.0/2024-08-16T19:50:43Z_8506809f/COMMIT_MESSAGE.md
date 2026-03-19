commit 8506809f100184d84bb1c16d6c14cdbf7d03e9f1
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Aug 16 21:50:43 2024 +0200

    [otelcol] Preserve internal representation for components' configurations (#10897)
    
    #### Description
    
    The custom unmarshalling for components copied a map without preserving
    the internal representation. This led to the issues mentioned on #10552
    not being fully fixed (they were only fixed if they happened in the
    `service::telemetry` section for example).
    
    #### Link to tracking issue
    Fixes issues mentioned on #10552
    
    #### Testing
    
    This adds one unit test at the `otelcol` level. Since we didn't catch
    this with our current `confmap/internal/e2e` tests, we likely also want
    to refactor those.
    
    ---------
    
    Co-authored-by: Dmitrii Anoshin <anoshindx@gmail.com>
    Co-authored-by: Curtis Robert <crobert@splunk.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
