commit 3deaeb2232b5d7c5f4cb80c5b2009526bb725bc3
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Nov 15 07:58:09 2023 -0800

    [chore] ensure checks run on push to renovatebot branch (#8924)
    
    Otherwise, PRs for dependency updates will not re-trigger the CI once
    gotidy has been run and pushed to the branch.
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
