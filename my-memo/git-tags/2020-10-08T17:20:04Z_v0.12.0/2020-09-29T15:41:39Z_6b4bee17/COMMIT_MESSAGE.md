commit 6b4bee17236ea37ab332e5aa823a77fc5508b813
Author: Ben Keith <benkeith@splunk.com>
Date:   Tue Sep 29 11:41:39 2020 -0400

    fluentbit Extension: Fix flaky test (#1850)
    
    The failures reported in #1848 seem to be caused by the issue described
    in https://github.com/golang/go/issues/22315 and the fact that we run
    tests in parallel.
