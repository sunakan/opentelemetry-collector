commit 7adca809a60fad65a71063f6651f231466a29844
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed May 7 10:15:47 2025 +0200

    [chore] Add testing requirements for stable components (#12971)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Adds wording regarding testing requirements for stable components. The
    intent is for the lifecycle tests to be handled via mdatagen.
    
    This follows the work done on
    open-telemetry/opentelemetry-collector-contrib/issues/39543, with which
    now we have component coverage per component.
    
    #### Link to tracking issue
    Fixes #11867
