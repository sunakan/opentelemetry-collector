commit 9b382e6cbf4b03b0c364baaaad012c6d0b9a9440
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Apr 20 19:32:48 2021 +0200

    Error checking on unit tests (#2959)
    
    * Error checking on unit tests
    
    * Add back license text
    
    * Retrigger CI
    
    * Wrap defer calls with `func`
    Arguments are evaluated immediately on defer calls
    
    * Update config/configauth/oidc_server_test.go
    
    * Use t.Cleanup
    
    * Change ioutil.ReadAll by resp.Body.Close()
    
    * Retrigger CI (flaky tests)
