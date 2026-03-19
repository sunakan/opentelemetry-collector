commit e7f231e93144b64889c34d04607aeac5c582514d
Author: Steve Flanders <steve@omnition.io>
Date:   Tue Oct 15 12:05:28 2019 -0700

    Move probablistic and tail sampling processors under common parent (#399)
    
    * Move probablistic and tail sampling processors under common parent
    
    Phase 1 change to defining sampling processors. This structure follows
    what is done in the receiver and exporter folders.
    
    * Import from proper directory for sampling
