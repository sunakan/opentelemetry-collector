commit 5cae69d5f1d92eade96a7785b3d697e87637bf99
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Mon Dec 7 17:49:41 2020 -0500

    Don't run contribtest on master. We only want to run it for PRs and releases (#2267)
    
    We want to contribtest to run on PRs to make it clear when we are making
    a breaking change. We also want to run it on release branches to prevent
    making a core release when contrib is broken.
    
    However, there is no point in running the contribtest on master branch, it does
    not help and only pollutes the view with failures that are always ignored.
