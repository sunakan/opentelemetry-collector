commit a56622d7b707e0053057c3fcdcc680f753f2b1f1
Author: Ruslan Kovalov <ruslan.kovalov@grafana.com>
Date:   Mon Aug 15 19:43:18 2022 +0200

    Fix bug in setting the correct collector state after a config change event. (#5896)
    
    * Fix bug in setting the correct collector state after a config change event.
    
    Fixes #5830.
    
    * Update collector_test.go
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
