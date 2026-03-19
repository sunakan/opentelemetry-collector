commit 1bfe6c3aec2be7868af4ffb3eb3d394710bc1e2f
Author: Sean Marciniak <30928402+MovieStoreGuy@users.noreply.github.com>
Date:   Thu Sep 26 09:14:12 2024 +0930

    Improving memory performance when it comes to snappy (#11177)
    
    #### Description
    Moving snappy to lazy read from the original payload instead
    decompressing all of the buffer into memory.
    
    This is something I noticed while trying to introduce support for lz4
    compression, moved into its own PR at the suggestion of @atoulme.
    
    #### Testing
    
    All of the tests are already present so no additional tests were needed.
