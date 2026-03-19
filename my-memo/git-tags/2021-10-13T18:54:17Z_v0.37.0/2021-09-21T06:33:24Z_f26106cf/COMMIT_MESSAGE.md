commit f26106cf4d5f60b121b18638fbb17648aad0a0ec
Author: Sean Marciniak <30928402+MovieStoreGuy@users.noreply.github.com>
Date:   Tue Sep 21 16:03:24 2021 +0930

    Improving usability of combined errors throughout the collector (#4057)
    
    * Making a change to allow for combined errors to support go 1.13+ error
    handling
    
    The idea behind this means that there is no need to discard errors in
    order to combine them. This approach allows for the original errors to
    be intact while only returning a singular error.
    
    * Simplifying the iterate function
    
    * Further simplification
