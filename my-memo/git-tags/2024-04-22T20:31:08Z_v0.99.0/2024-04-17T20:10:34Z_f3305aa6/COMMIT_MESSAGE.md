commit f3305aa6b7887b2addbd1093ac9fb063cc42cf0e
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed Apr 17 13:10:34 2024 -0700

    [mdatagen] generate goleak package test (#9959)
    
    This automates the generation of package_test.go for any component that
    uses mdatagen.
    
    The following configuration can be used to skip or ignore certain funcs:
    
    ```yaml
    tests:
      goleak:
        skip: true
    
    tests:
      goleak:
        ignore:
          top:
            - "go.opencensus.io/stats/view.(*worker).start"
    ```
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
