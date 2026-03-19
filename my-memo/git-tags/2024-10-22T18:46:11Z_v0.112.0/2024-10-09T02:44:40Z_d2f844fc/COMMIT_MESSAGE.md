commit d2f844fc4674b1114f25d4e17e6a6f935de6eac3
Author: Sean Marciniak <30928402+MovieStoreGuy@users.noreply.github.com>
Date:   Wed Oct 9 13:14:40 2024 +1030

    confighttp: Including lz4 as supported compression encoding (#11108)
    
    #### Description
    
    Adding in support for lz4 compression into the project, I have seen it
    perform amazing well in other projects that send a lot of traffic and
    were originally using `gzip` or `flate`.
    
    It would be really great to have for environments that are cpu, memory
    sensitive.
    
    #### Link to tracking issue
    Fixes 9128
    
    #### Testing
    
    I've updated the existing test frameworks to include lz4 in their suite
    
    #### Documentation
    
    I've updated the readmes to include lz4 but I suspect there might be
    more places to update.
