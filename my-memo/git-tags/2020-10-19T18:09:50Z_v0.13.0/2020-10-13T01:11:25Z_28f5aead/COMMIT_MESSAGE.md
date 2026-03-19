commit 28f5aead85988b5e6e0c2ae55c635d647105c249
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Oct 12 18:11:25 2020 -0700

    Enable sending queue by default in all exporters configured to use it (#1924)
    
    * Enable sending queue by default in all exporters configured to use it
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix tests after the sending queue was enabled
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix race condition in otlp_test
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Remove queued_retry from testbed
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * More data race fixes in otlp_trace
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix more race conditions in otlp_trace
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix trace nobackend loadtests, fix log loadtests
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
