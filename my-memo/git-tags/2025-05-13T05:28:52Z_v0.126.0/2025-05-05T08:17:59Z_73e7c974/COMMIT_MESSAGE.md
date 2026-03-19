commit 73e7c974d21c99de8cf00ce7346515a491856b1c
Author: SACHIN KUMAR <118827645+sAchin-680@users.noreply.github.com>
Date:   Mon May 5 13:47:59 2025 +0530

    Implement a merge freeze when an "[chore] Update core dependencies" PR on opentelemetry-collector-contrib is present (#12837)
    
    #### Description
    Extend the merge freeze logic in
    `.github/workflows/scripts/check-merge-freeze.sh` to include open PRs
    titled "[chore] Update core dependencies" in the
    `opentelemetry-collector-contrib](https://github.com/open-telemetry/opentelemetry-collector-contrib`
    repository, in addition to the existing check for "[chore] Prepare
    release" PRs in the core repo.
    
    This ensures that no PRs can be merged into `main` while a core update
    PR is pending in contrib, helping us avoid version drift and keep
    dependencies aligned between core and contrib.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/12830
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    Tested locally by:
    
    - Opening a dummy "[chore] Update core dependencies" PR on
    `opentelemetry-collector-contrib`
    - Running the updated `check-merge-freeze.sh` script to confirm it
    correctly blocks merges
    - Verified output message includes the contrib PR URL when such a PR is
    open
    <!--Describe the documentation added.-->
    #### Documentation
    No user-facing documentation changes needed. This change only affects
    internal CI logic.
    <!--Please delete paragraphs that you did not use before submitting.-->
    
    Signed-off-by: sAchin-680 <mrmister680@gmail.com>
