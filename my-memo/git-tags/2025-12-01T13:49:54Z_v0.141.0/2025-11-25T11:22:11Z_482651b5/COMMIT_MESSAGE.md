commit 482651b50ecfa631a92169ea0336ab8b811512cb
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Nov 25 11:22:11 2025 +0000

    [chore] Fix benchmark (#14212)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    `b.Loop()` should not be used after it has returned false.
    
    This changes the code to run offer a bunch of times and then consume a
    bunch of times
    
    I believe this is what is making codspeed fail.
