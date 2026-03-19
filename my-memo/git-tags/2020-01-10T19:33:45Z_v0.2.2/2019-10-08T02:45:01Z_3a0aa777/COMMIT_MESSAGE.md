commit 3a0aa7770562b21aaa95f242c30495de714e9f29
Author: Paulo Janotti <paulo@omnition.io>
Date:   Mon Oct 7 19:45:01 2019 -0700

    Handle factories returning nil objects without error (#381)
    
    The factories can be implemented by 3rd party and this gives a better error message instead of a crash.
