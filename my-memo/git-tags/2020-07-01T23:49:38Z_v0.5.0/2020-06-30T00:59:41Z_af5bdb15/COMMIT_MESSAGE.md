commit af5bdb15ff48148e2bdf2b321d9f6dfb9bdca286
Author: James Bebbington <jbebbington@google.com>
Date:   Tue Jun 30 10:59:41 2020 +1000

    Host Metrics process scraper (#1047)
    
    * Initial commit of host metrics process scraper that scrapes cpu, memory & disk metrics
    
    * Refactored the host metrics process scraper getProcessHandles func to return an interface to avoid having to convert the type of each process struct returned by gopsutil
    
    * Changed process/cpu/usage metric to double type
    
    * Refactor process metrics to store process information as a resource rather than labels
