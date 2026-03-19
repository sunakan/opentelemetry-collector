commit a515ff9f1025dad5d3be5efbf85dbc4b143b0b88
Author: Junhao Yu <106206540+junhaoyu-aws@users.noreply.github.com>
Date:   Mon Aug 15 15:24:50 2022 -0700

    httpprovider for Collector: load configuration from config files in HTTP servers (#5876)
    
    * httpprovider to upstream
    
    * no slashes in the prefix check
    
    * use httptest package to do unit tests; then add one more testcase TestValidateProviderScheme
    
    * added error checks for http.ResponseWriter.Write()
    
    * Fixed bug of variable shadows, then replace old io/ioutil package with io and os
    
    * update the old name ConfigMapProvider
    
    * Remove unnecessary interface of httpClient
    
    * README fixed with
    
    * Removed NewTestProvider/NewTestInvalidProvider/NewTestNonExistProvider and replace with New; Minor tweaks for Empty URI and Non-exist cases; Added one more test for shutdowned server
    
    * Simplified unit tests for TestNonExistent and TestRetrieveFromShutdownServer
    
    * Update CHANGELOG.md
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
