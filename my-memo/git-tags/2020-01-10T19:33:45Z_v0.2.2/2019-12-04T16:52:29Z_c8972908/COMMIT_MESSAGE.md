commit c897290808c914c33cc518b58cd18a6d0d71f5b3
Author: Joe Elliott <joe.elliott@grafana.com>
Date:   Wed Dec 4 11:52:29 2019 -0500

    Add Jaeger Agent Configuration (#434)
    
    * Added agent protocol config wiring.  Removed agent http server
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Conditionally start agent protocols based on config
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Bail out of startAgent if nothing is configured
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Updated readme
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added tests
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Removed binary test because opencensus jaeger exporter doesn't support it
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Corrected test to expect jaeger format and removed redundant test
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added independently configurable agent processors
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added config tests
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added support for http agent
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Fixed testbed tests
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Fixed imports
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Improved coverage in factory.go
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added http proxy tests
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Moved location of the testdata reference to show it refers to both agent and collector protocols
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Replaced hardcoded port with dynamic
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Synchronously stop processors
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added testutils method to wait for a port and used it to wait for the http server
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Cleaned up gross wait function
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added WaitForPort Test
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Fixed testutils error.  Added baggageRestrictions test
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added tests for port in use and trace source
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Pass logger to processors
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Removed flaky tests
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added test to confirm binary thrift opens the right port
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Added tests to to confirm invalid ports would not start
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Only call startAgent to avoid startCollector race condition
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Migrated assert.NoError
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
    
    * Consolidated similar code into a one function
    
    Signed-off-by: Joe Elliott <number101010@gmail.com>
