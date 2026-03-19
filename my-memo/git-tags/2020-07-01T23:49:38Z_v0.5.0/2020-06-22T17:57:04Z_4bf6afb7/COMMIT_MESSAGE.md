commit 4bf6afb7f5e17bbd9d7246debc2434ed694c37a4
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Mon Jun 22 10:57:04 2020 -0700

    Enable "new-metrics" by default (#1148)
    
    * Enable "new-metrics" by default
    
    This change switches the defaults between "new-metrics" and "legacy-metrics".
    
    Now the defaults are:
    - "new-metrics" ON by default
    - "legacy-metrics" OFF by default
    - "add-instance-id" ON by default
    
    * Use Prometheus parser in tests
