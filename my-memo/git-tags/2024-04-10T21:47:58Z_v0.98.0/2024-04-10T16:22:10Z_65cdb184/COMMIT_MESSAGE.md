commit 65cdb184f31da4bdd432667ceca3d7fbf35c6ddf
Author: Ankit Patel <8731662+ankitpatel96@users.noreply.github.com>
Date:   Wed Apr 10 12:22:10 2024 -0400

    Add length limit to component (#9901)
    
    Changes component.Type validation regex to only allow a max of 63
    characters in a type name.
    
    Fixes #9872
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
