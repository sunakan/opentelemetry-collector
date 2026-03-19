commit 8cac172d88ddf438b1260cb70761bf898d2478ef
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Wed Apr 7 10:34:22 2021 -0700

    Add a config source manager (#2857)
    
    Adds a config source manager that wraps the interaction with config sources. This should be the part visible outside the configuration-related implementation, ie.: for the code setting up the service and watching for updates.
    
    The syntax for config source references is provisional.
