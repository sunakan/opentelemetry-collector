commit a9b5a1d8e03edcad315963427ca1046c3fe04640
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Sep 19 14:11:19 2022 -0700

    [chore] multimod must be run before genotelcorecol (#6080)
    
    * [chore] multimod must be run before genotelcorecol
    
    Adding a step in `prepare-release` to merge the branch created by multimod.
    
    * use newest multimod
    
    * update go mod/sum
    
    * update checkdoc, disable tidy from tool
