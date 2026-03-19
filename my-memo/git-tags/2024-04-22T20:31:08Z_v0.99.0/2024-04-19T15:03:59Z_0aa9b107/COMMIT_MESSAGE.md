commit 0aa9b10728623710bda8665d0823b45e039b4126
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Fri Apr 19 17:03:59 2024 +0200

    [cmd/builder] Improve TestVersioning (#10000)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Improves `TestVersioning` added on #9897.
    
    The configurations were not what one would usually find, since when
    running the builder we do some validation and setup.
    This makes it closer to the real case.
    
    In the process I removed the 'invalid' cases, since these error out
    today already
