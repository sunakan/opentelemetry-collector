commit 5d463fe48816e1ba93c9b170ab90c725b283e590
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Dec 9 11:34:40 2019 -0500

    Make testbed usable from other repos (#449)
    
    1. Extract perf tests to "Scenario" funcs which are parametrized and use the
       scenarios in Test funcs in this repo. This allows the same scenarios to
       be used in other repos (such as "contrib"). The intent is to perform the same
       scenarios with other protocols defined in "contrib".
    
    2. Introduce helper funcs like DoTestMain that make it easy to use the testbed
       from other repos.
    
    3. Make testutils package public to allow it to be used from testbeds in other repos.
    
    4. Fixed broken targets in makefile.
