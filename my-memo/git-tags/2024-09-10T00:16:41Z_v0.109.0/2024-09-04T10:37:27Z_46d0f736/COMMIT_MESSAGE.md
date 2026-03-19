commit 46d0f7361e34629f3f715a844df1fe0b8bae16e6
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Wed Sep 4 12:37:27 2024 +0200

    [extension] Move optional interfaces to extensioncapabilities (#11000)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    <!-- Issue number if applicable -->
    
    Moves extension optional interfaces to a new module,
    `extensioncapabilities`.
    
    The intent is to be able to evolve these interfaces independently from
    the core interfaces on core.
    
    These are used by at most one component/project, so I think they are not
    mature yet for 1.0
    
    ---------
    
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
