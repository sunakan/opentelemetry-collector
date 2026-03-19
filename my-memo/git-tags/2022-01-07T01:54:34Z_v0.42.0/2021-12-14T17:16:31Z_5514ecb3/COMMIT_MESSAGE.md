commit 5514ecb32e1b10a7c4d45b983793d048e5114c1f
Author: Sean Marciniak <30928402+MovieStoreGuy@users.noreply.github.com>
Date:   Wed Dec 15 03:46:31 2021 +1030

    Making access atomic to the collector's level (#4549)
    
    * Making access atomic to the collector's level
    
    In order to allow for more tests to run concurrently without triggering
    the race detector, Level needs to be guarded by some atomic method.
    This change makes access to the collector's Level managable via sync
    method which may lead to eventual consistent.
    
    * Update obsreport/obsreport_test.go
    
    Remove this change
