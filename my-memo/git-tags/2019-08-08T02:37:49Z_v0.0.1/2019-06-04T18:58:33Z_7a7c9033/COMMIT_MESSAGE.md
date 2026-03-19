commit 7a7c90337d55ad29ef1dd4bd6cf649921d0681f7
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jun 4 14:58:33 2019 -0400

    Add implementation of OpenCensus receiver config (#562)
    
    * Add implementation of OpenCensus receiver config
    
    - Added factory and config loading for OpenCensus receiver.
    
    - Added support for custom unmarshaling of receiver configuration.
    
    - Added ability for factory to create trace and metric receivers
      based on configuration. This will be later required when building
      the pipeline based on the config.
    
    - Moved example factories used in tests to example_factories.go to
      make it easier to reuse them in other tests.
    
    Testing done: automated tests
    
    * Fix PR comments.
