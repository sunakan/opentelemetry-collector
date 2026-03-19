commit ed76cb8d64eb8e53850ae0f1f6b00c9ee47a4825
Author: Paulo Janotti <paulo@omnition.io>
Date:   Thu Nov 14 09:30:03 2019 -0800

    Fix race on metrics adjuster (#417)
    
    * Fix race on metrics adjuster
    
    The field "mark" was not fully protected, added proper RLock/RUnlock to protect it. Opportunistically moved one lock from higher level to where it is actually used and also added a sleep looked like was missing from the test.
    
    Fixes #391
    
    * Fix race around jm.lastGC
    
    * Return tsm lock tp AdjustMetrics method and replace sleep in test with explicit gc call
