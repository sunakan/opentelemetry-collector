commit 9f801c5b8d9f1dcbb6ff70dfd66bb66101c13044
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Jan 10 14:33:45 2020 -0500

    Use specific commit hash in dependency (#496)
    
    We previously had a broken dependency that was referring
    to non-existing version 0.2.0. This is now causing problems
    whenever go attempts to resolve latest version.
    
    Pinning to specific commit should hopefully fix the problem.
