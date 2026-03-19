commit 2f84cb58fe1b9224ff8548a4686e812a448748d4
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Wed Jul 21 06:31:48 2021 -0700

    Add Config and Factory types to configsource package (#3608)
    
    Add the infrastructure to build and configure different config source objects. This is still under experimental so it can't access private interfaces in the config package, the code aligns with the latest in the config package.
    
    For an example of a config source implementation see https://github.com/signalfx/splunk-otel-collector/tree/main/internal/configsource/envvarconfigsource
