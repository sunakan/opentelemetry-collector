commit 6e2fdc755b34f88437df2e9551b9a1ce1110820e
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Fri Dec 1 12:51:46 2023 -0800

    [chore] Remove unused GH env var from makefile (#9033)
    
    The env var is not being used. `gh` command is used directly in the
    shell scripts, not make targets.
