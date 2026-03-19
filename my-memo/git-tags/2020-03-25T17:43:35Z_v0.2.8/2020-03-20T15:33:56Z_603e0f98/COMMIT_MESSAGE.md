commit 603e0f98211d13af82267d3731e73dc2ecf493e4
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Fri Mar 20 11:33:56 2020 -0400

    Factor out and export config.LoadReceiver (#658)
    
    * Factor out and export config.LoadReceiver
    
    loadReceivers is being split into a singular version and exported called
    LoadReceiver. This is needed to enable a new type of dynamic receiver that
    itself can load and create receivers at runtime. To be able to load other
    receivers at runtime it needs to be able to load their configs. The same
    LoadReceiver code can be used for that as well as statically configured
    receivers as they exist today.
    
    * Revert change to go.sum
