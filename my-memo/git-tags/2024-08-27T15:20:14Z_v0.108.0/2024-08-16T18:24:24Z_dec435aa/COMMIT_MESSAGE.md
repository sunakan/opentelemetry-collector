commit dec435aa6ee66e2f30548ccd1e9e648059b7f7ab
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Fri Aug 16 11:24:24 2024 -0700

    [chore] pin version for npm tooling (#10905)
    
    The repo uses markdown-link-check and not having a package.json file to
    pin the version causes dependabot security checks sadness. Following the
    same pattern as the specification repo for storing package.json in the
    root of the repo.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
