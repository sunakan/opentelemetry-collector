commit 0462e5c85d1b9b2ad51eff36d6cf98e692689e0b
Author: zpzhuSplunk <127359723+zpzhuSplunk@users.noreply.github.com>
Date:   Fri Jul 26 08:21:13 2024 -0700

    [exporterhelper] record metric should log the number of log records before the data are sent to the consumers downstream (#10402)
    
    #### Description
    The sender metric within the exporterhelper should measure the number of
    items coming into the sender, not what was done with the items
    downstream, if the components downstream are mutable. An example of this
    is provided as a unit test within this PR.
    
    This PR also addresses nil panics that some users are experiencing.
    
    #### Link to tracking issue
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/10033
