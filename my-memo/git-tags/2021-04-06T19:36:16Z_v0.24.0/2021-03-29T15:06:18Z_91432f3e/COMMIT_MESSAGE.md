commit 91432f3e44c920d232ca680b20c25d29da29f405
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Mon Mar 29 08:06:18 2021 -0700

    Add capability to reload configuration (#2780)
    
    This allows the same Application to load config multiple times during a single run. No public way to trigger the configuration reload was added.
    
    Testing:
    Added tests to validate success and failures on reload of config.
