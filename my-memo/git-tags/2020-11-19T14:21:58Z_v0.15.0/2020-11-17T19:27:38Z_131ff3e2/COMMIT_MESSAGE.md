commit 131ff3e248b6377c145a97819d7a0f57fdd1ee0e
Author: Jaana Dogan <jbd@amazon.com>
Date:   Tue Nov 17 11:27:38 2020 -0800

    Remove unnecessary interfaces from the Prometheus receiver (#2171)
    
    Otherwise, static analysis tools are not very useful on this package and the interface types are introduced arbitarily not because of need.
