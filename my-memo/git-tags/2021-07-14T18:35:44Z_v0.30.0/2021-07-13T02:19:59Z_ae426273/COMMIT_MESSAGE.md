commit ae42627341243429d71192457f11b1333c0b31f3
Author: JBD <jbd@amazon.com>
Date:   Mon Jul 12 19:19:59 2021 -0700

    Validate the Prometheus configuration (#3589)
    
    * Validate the Prometheus config
    
    Validate against nil configuration and configuration with no scrape_configs.
    
    Fixes #2705.
    
    * Allow initialization of recievers without any configuration
