commit 650ff4b97680a3aa67590adab4a3d7dbe53a0abf
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Nov 2 13:09:05 2022 -0700

    [chore] update go.mod for new modules
    
    These were requiring an invalid version of the collector (which was overwritten via replace statements in the module) but causes any modules that include them to require the invalid version of the collector.
