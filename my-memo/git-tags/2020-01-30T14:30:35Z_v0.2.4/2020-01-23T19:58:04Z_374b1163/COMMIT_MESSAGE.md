commit 374b11630c37b76d6b4dfcd04fb115add2db8ee7
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Fri Jan 24 01:28:04 2020 +0530

    Migrate to Go1.13 (#509)
    
    Go 1.13 has been out for quite a while now and 1.14 beta is out as well.
    We've been building core, contrib and some internal collectors with 1.13
    for quite some time now and have resolved all issues that came with the
    upgrade already. This should be a very safe change.
    
    This will allow us to use leverage new features and fixes shipped by
    1.13 such as updates to Go modules, error wrapping, etc.
