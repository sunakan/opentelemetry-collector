commit c79f50b846494f488df45e7b6505e91868560fcd
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Wed Aug 5 09:54:40 2020 -0700

    Add process telemetry tests and avoid frequent error on Windows (#1487)
    
    * Add process telemetry tests
    
    * Get the procfs.Proc instance at creation, this avoids failing constantly on Windows.
