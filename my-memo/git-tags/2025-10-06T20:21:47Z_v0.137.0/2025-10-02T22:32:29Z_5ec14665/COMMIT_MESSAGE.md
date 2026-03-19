commit 5ec1466578efa2f727a4d881979b3bab7439c810
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Oct 3 00:32:29 2025 +0200

    [configoptional] Mark as 1.0 (#13885)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Marks configoptional as 1.0.
    
    Notably missing from configoptional is support for scalar values. This
    has been analyzed over at #13421 and the conclusion is that it can be
    done in a backwards compatible way.
    
    cc @open-telemetry/collector-approvers
    
    I intend to merge this on or after October 6th (but if, while I am away,
    this gets enough approvals, we can go ahead and merge it).
    
    #### Link to tracking issue
    Fixes #13403
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
