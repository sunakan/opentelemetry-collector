commit 975041ab6d68cf3ff150cf91885e30c80e8e2110
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Thu Jun 4 10:12:01 2020 -0700

    Hard code expected labels on obsreport tests (#1083)
    
    * Hard code expected labels on obsreport tests
    
    The goal is to prevent inadvertent changes of the labels. Using hard coded values requires manual changes of the tests.
    
    * Add reason to be careful about metric name and label changes
