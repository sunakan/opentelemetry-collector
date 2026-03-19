commit 0215107a039085cdfba592d2a8fa5eb3f0bd1cbc
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Tue Mar 16 18:08:21 2021 -0700

    Verify extension lifecycle (#2679)
    
    * Verify extension lifecycle
    
    Adds a test to ensure all extension types can be created, started, and stopped multiple times. Fix the issues found with the test on the extensions.
    
    * PR feedback
    
    * Use available port for healthcheck in TestApplication_Start
    
    * Embed nopHost into assertNoErrorHost
    
    * Fix accidentally lost shutdown for activeExt in VerityExtensionLifecycle
    
    * to be reverted, testing CI
    
    * Coverage tax
    
    * Use runtime.Gosched instead of long sleep
    
    * Add assert info and delay to release TCP socket
    
    * Fix healchcheck shutdown to only exit after the Serve goroutine is done
    
    * Ensure shutdown of extensions wait for server stop
    
    * Remove loop from VerifyExtensionLifecycle
    
    * Make verify lifecycle private to defaults_test.go
    
    * Remove public NewAssertNoErrorHost
