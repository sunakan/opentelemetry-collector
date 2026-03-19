commit 396964d8cfac89cc126901f4b1590bea7b69817b
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Oct 25 17:09:50 2022 +0200

    [config{grpc,http}] Add warning when using unspecified address (#6267)
    
    * [config/config{grpc,http}] Add warning when using a 0.0.0.0 endpoint
    
    * Add warning when using unspecified address
    
    * Add changelog entry
    
    * Fix tests
    
    * Fix HTTP tests
    
    * Apply suggestions from code review
    
    Co-authored-by: Alex Boten <alex@boten.ca>
    
    * Use IsUnspecified method
    
    * no else after return
    
    * Move shared code to internal
    
    Co-authored-by: Alex Boten <alex@boten.ca>
