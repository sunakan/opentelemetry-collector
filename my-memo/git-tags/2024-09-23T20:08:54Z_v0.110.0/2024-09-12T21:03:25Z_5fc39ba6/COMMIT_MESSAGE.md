commit 5fc39ba6334f396c3b5497bf6d29db12823cb50c
Author: Murphy Chen <minquan.chen@daocloud.io>
Date:   Fri Sep 13 05:03:25 2024 +0800

    [mdatagen] mdatagen support validate metrics in in telemetry section (#10942)
    
    #### Description
    
    I have a use case, I define an attribute and try to use it in
    `telemetry.metric` however I encounter an error: `unused attributes:
    [xxx]`
    So, I push this PR to enhance the `validateMetrics()` func to support
    validate metrics in `telemetry.metric`
    
    #### Link to tracking issue fix
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/10925
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
