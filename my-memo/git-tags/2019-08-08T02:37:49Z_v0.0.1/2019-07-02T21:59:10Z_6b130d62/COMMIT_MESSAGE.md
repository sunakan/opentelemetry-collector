commit 6b130d62dbaa85fc98b17630ad6717771aa9544b
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Wed Jul 3 03:29:10 2019 +0530

    Added memory ballast e2e behavior test (#85)
    
    Added a new test that verifies that the ballast behaves only counts to
    virtual memory and is not actually allocated.
    
    Also added `tests/results/BASELINE.md` to act as the baseline test
    results file. The TESTRESULTS.md file was modified on every run and it
    would change in every PR from every contributor. It added additional
    work when one didn't want to include it in a PR which was most of the
    time. Only time it should be updated is when someone adds or updates a
    new perf test.
