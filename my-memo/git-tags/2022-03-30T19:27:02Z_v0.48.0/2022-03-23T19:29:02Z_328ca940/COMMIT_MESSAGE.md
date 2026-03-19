commit 328ca94080e727c424cc5006c33e38612146acd1
Author: Martin Hickey <martin.hickey@ie.ibm.com>
Date:   Wed Mar 23 19:29:02 2022 +0000

    Change parameter 'location' to a more relevant name (#5058)
    
    The parameter `location` used in the `Retrieve` function
    of the `Provider` interface does not clearly define what it is.
    
    This PR changes it to `uri` as it more clearly defines its value,
    which is a data URI scheme.
    
    Closes #5002.
    
    Signed-off-by: Martin Hickey <martin.hickey@ie.ibm.com>
