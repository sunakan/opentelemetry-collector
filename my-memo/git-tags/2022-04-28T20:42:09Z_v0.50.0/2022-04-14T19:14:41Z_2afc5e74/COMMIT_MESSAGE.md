commit 2afc5e748a9efc8b0fcc89519afa6b1ba0d42d2e
Author: Tyler Helmuth <12352919+TylerHelmuth@users.noreply.github.com>
Date:   Thu Apr 14 13:14:41 2022 -0600

    Update BoundedMemoryQueue to consume remaining items on close (#5203)
    
    * BoundedMemoryQueue now consumes on close
    
    * Add back !ok return
    
    * Removed stopCh
    
    * Cleanup
    
    * Updated CHANGELOG.md
