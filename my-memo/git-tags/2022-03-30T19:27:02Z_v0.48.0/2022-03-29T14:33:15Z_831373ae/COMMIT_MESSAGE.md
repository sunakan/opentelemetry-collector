commit 831373ae6c6959f6c9258ac585a2ec0ab19a074f
Author: Alex Boten <alex@boten.ca>
Date:   Tue Mar 29 07:33:15 2022 -0700

    add transition from instrumentationlibrary -> scope (#5085)
    
    * add transition from instrumentationlibrary -> scope
    
    This is the last piece of upgrading to v0.15.0. This PR adds the tests and code to ensure the transition plan is implemented in the collector.
    
    Fixes #5074
    
    * fix spacing, add link
    
    * update unmarshaler, adding tests
    
    * update grpc tests
    
    * update changelog
    
    * Update model/otlpgrpc/logs.go
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
