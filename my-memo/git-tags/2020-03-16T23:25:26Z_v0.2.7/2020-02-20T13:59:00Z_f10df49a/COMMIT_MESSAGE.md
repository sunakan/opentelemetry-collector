commit f10df49a115da80388452d36e8b97bbe540298fd
Author: Joe Elliott <joe.elliott@grafana.com>
Date:   Thu Feb 20 08:59:00 2020 -0500

    Add Support for Sampling JSON (#547)
    
    Added support for hosting a jaeger remote sampling file as requested in #500. This was added to the core repo per discussion there.
    
    Link to tracking Issue:
    Fixes #500
    
    Testing:
    Tests were added covering config, receiver creation and receiver functionality.
    
    Documentation:
    Added documentation on the new strategy_file config option.
