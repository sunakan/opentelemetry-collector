commit 9778b16b81016d6035b2a9f42cda8dc05d8165b8
Author: Joe Elliott <number101010@gmail.com>
Date:   Tue Jan 14 12:59:40 2020 -0500

    Refactor Jaeger Receiver config (#490)
    
    Fixes #445, #158
    
    This PR addresses some Jaeger receiver config cleanup as well as makes some breaking changes to the way the config is handled.   See below for details.
    
    **Fixes/Updates**
    - Disabled flag is respected per protocol
    - Unspecified protocols will no longer be started
    - Empty protocol configs can now be specified to start the protocol with defaults. e.g.
      ```
      jaeger:
        protocols:
          grpc:
      ```
    - Updated readmes
    - Naming and behavior of per protocol Addr/Enabled functions in `trace_reciever.go` has been standardized.
    - Added thrift tchannel test to meet code coverage
    
    **Breaking Change**
    Changed the way an empty `jaeger:` config is handled.  An empty/default config does not start any jaeger protocols.  Previously it started all three collector protocols.  This is a consequence of not starting unspecified protocols.
