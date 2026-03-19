commit 05f573f77c1a1edc1c1eb817d2eb1abad78a742e
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri May 9 00:53:30 2025 +0200

    [chore] Update bugfix release guidelines (#12999)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This updates the bugfix guidelines to make them less strict. In
    particular, after this change, we would start releasing bugfix releases
    under the following cases:
    
    1. Lack of consensus of SIG leads on whether to release a bugfix version
    within one working day after a report has been made
    2. Issues that have not been reported by multiple people, but that are
    known to be used in production
    
    This also:
    - Explicitly lists difficulties with debugging and troubleshooting as
    'severe enough'
    - Explicitly states that the release manager is responsible for bugfix
    releases
