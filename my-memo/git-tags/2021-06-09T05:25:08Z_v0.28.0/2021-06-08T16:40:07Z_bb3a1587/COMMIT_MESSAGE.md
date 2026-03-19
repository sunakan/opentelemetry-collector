commit bb3a1587c6c9b46b5f50e6bd4b37777fdcb95818
Author: Ryan Fitzpatrick <rmfitzpatrick@users.noreply.github.com>
Date:   Tue Jun 8 12:40:07 2021 -0400

    Run make gotidy for check-contrib (#3392)
    
    If there are core dependency changes that affect the contrib go module state the check-contrib make target will fail. These changes run make gotidy in the contrib project before running the tests (per https://github.com/open-telemetry/opentelemetry-collector/pull/3337/files#r647145882)
