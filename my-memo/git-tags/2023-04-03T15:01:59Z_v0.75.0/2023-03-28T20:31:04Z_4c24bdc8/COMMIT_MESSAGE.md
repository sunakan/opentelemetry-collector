commit 4c24bdc883db0c7348ed51cef3e5bbbffd2d8179
Author: Alan West <3676547+alanwest@users.noreply.github.com>
Date:   Tue Mar 28 13:31:04 2023 -0700

    [loggingexporter] Fix display of bucket boundaries of exponential histograms (#7445)
    
    The interval notation used for displaying bucket boundaries of exponential histograms was incorrect.
    
    Should be:
    Negative buckets -> lower bound is inclusive, upper bound exclusive
    Positive buckets -> lower bound is exclusive, upper bound inclusive
