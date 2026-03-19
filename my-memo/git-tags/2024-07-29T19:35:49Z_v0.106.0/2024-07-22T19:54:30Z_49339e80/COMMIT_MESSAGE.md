commit 49339e80ccd7d1ba15f0fa722e4242cd5a6b2597
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Mon Jul 22 14:54:30 2024 -0500

    [chore] Reduce complexity in processorhelper obsreport (#10693)
    
    This PR removes the `recordData` method, which I believe is an unhelpful
    abstraction for reporting internal processor metrics.
    
    The drawbacks of the function are minor, but briefly:
    1. Recording any metric requires passing in zeros for _all other
    metrics_. This is cumbersome to extend because any new metric requires
    updating the call to `recordData` for all metrics. It's also fragile
    because if we have more than a few metrics it is easy to position the
    intended metric incorrectly.
    2. Every metric describes one data type, which is passed into
    `recordData` but then just used as a switch to get back to code that is
    specific to that data type.
    3. Every call to `recordData` instantiates N variables, where N is the
    number of metrics for each data type.
    
    All of this seems unnecessary as we can just report each metric in one
    unambiguous line of code.
