commit f7727d168ba4e200ae4f7019ab3a07c2d059de58
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Sat Sep 14 06:30:09 2019 +0530

    Fixed loop variable pointer bug in jaeger translator (#341)
    
    Jaeger translator was taking address of the loop variable when copying
    span tags. This resulted in all destination tags having same values.
    This PR fixes the bug and also uses one common code pattern for all
    copying code so that copy pasting in future does not introduce similar
    bugs.
