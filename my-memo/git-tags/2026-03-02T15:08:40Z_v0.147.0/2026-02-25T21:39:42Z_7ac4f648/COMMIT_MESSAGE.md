commit 7ac4f648b6aa2eda0b29d435e1d023d2c0f57bbe
Author: EdgeN8v <ckx19921555595@gmail.com>
Date:   Thu Feb 26 05:39:42 2026 +0800

    ci: re-enable and speed up CodSpeed benchmarks via matrix sharding (#14643)
    
    #### Description
    This PR re-enables the automatic CodSpeed benchmarks and introduces
    matrix sharding to run them in parallel across component groups.
    
    By splitting the workload into 8 concurrent jobs and optimizing the Go
    cache, the wall-clock time is reduced from ~90 minutes to under 10
    minutes. This resolves the timeout issues that led to the workflow being
    disabled in #14637.
    
    #### Link to tracking issue
    Fixes #14636
    Related to #14637
    
    #### Testing
    Verified on my fork: parallel jobs trigger correctly and execute the
    benchmark commands as expected (final upload fails due to missing Token
    in fork, which is expected).
    
    ---------
    
    Co-authored-by: Yang Song <songy23@users.noreply.github.com>
