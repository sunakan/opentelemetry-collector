commit 4bc0aa60921be6f2583c35fa0c759fd11d1b77e2
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Tue Mar 31 00:32:36 2020 +0530

    Disbaled publish-dev job temporarily (#746)
    
    publish-dev job needs to be in it's own workflow as it ignores all tags
    and that conflicts with the publish-stable workflow. I'll re-enable
    publish-dev in a separate PR later.
