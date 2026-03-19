commit 9e8bded5b47e5e99994240b5dc41566dc582bf46
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Mon Jul 12 22:01:24 2021 -0400

    Deprecate Resize() from pdata slice APIs (#3573)
    
    * Remove Resize() from pointer slice API
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * model/pdata: refactor value slice interfaces
    
    * Removed Resize()
    * Added EnsureCapacity() and AppendEmptyN()
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * -Fix function signature in cpu_scraper_linux.go
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Fix remaining Resize() calls
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Fix OS-specific processes scraper
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Remove tests for equality of value slices that aren't comparable
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Remove AppendEmptyN from pdata slice APIs
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * batchprocessor: improve splitMetric() to avoid copying entire metric unless necessary
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * model/pdata: restore Resize() for slice types, mark as deprecated
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    * Update metrics_test.go
    
    * Update metrics_test.go
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
