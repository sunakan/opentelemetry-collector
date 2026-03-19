commit d48b9fadcff884b38fd6b06bf2076caf6dd48642
Author: Arpit Srivastava <arpitsrivastava529@gmail.com>
Date:   Sun Mar 1 22:44:53 2026 +0530

    [exporter/debug] output buckets for exponential histograms (#14656)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    the `writeexponentialhistogramdatapoints` function in the debug
    exporter’s normal verbosity mode previously had todo placeholder and did
    not print any bucket data. this change implements the missing bucket
    display.
    
    each bucket is now printed as `leX=Y`, where `X` is the computed upper
    bound and `Y` is the bucket count. for positive buckets, the upper bound
    is calculated as `exp((index+1) * factor)`, and for negative buckets as
    `-exp(index * factor)`, where `factor = math.Ldexp(math.Ln2, -scale)`.
    negative buckets are listed from most-negative to least-negative, and
    the zero bucket is printed as `zero=N` when its count is non-zero.
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes #10463
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    No documentation changes required.
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    ---------
    
    Signed-off-by: arpit529srivastava <arpitsrivastava529@gmail.com>
