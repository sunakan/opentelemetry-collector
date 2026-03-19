commit f69d23494726e899fc0ba006d86b55fe277870a8
Author: José Carlos Chávez <jcchavezs@gmail.com>
Date:   Mon Nov 22 18:08:58 2021 +0100

    Improves expand err (#4450)
    
    * chore: improves expand err
    
    Wrapping the underlying error with a meaningful error which gives context about the failure point makes it easier to debug.
    
    * docs: adds a comment on the mockProvider.
    
    * fix: fixes implementation assertion.
    
    * chore: fixes vanity import.
    
    * chore: adds defer to shutdown.
    
    * Rename mock.go to mock_test.go
    
    * Update mock_test.go
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
