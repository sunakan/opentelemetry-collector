commit 7c125fb00c2646d801a818f044ce2b6448a4a219
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Jul 15 07:21:57 2022 -0700

    add prepare-release make target (#5503)
    
    * add prepare-release make target
    
    make prepare-release does the following:
    - checks the local repository is clean
    - search/replace PREVIOUS_VERSION with RELEASE_CANDIDATE
    - runs make genotelcorecol
    - creates a commit on a new branch
    - runs make multimod-prerelease
    - commits the changes to the branch
    - creates a PR
    
    * add check for gh
