commit 0509360581777468489e55a1943ba1de8c7dd5c7
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Jul 15 09:32:18 2022 -0700

    skip changelog for [chore] prs (#5676)
    
    * skip changelog for [chore] prs
    
    Add a check in the changelog job to skip the job if the title of the PR contains [chore]. This makes it possible for a user who's change doesn't require a changelog entry and doesn't have write access to the repository to skip this check.
    
    For now I've left the check for the "Skip Changelog" label as well, in the future, this should be removed and the label can be removed altogether.
    
    * Update .github/workflows/changelog.yml
    
    Co-authored-by: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
