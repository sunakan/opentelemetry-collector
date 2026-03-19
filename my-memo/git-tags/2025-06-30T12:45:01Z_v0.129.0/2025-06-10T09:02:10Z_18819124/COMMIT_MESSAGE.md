commit 188191247685ded448d3ef6b5e218aa54da62065
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Jun 10 09:02:10 2025 +0000

    Make all NewDefault* functions return structs instead of pointers (#13169)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Some `NewDefault*Config` functions return `*Config`, while others return
    `Config`. As far as I can tell, this is solely because it was easier to
    write the code for existing usages of the configs. I think that's not
    the right approach: in my opinion, we should return either always
    `Config` or always `*Config`, and the former seems to be more natural to
    me (since the pointer should never be nil)
