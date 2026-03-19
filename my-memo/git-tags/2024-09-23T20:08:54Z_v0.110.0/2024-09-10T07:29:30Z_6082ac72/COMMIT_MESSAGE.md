commit 6082ac72895dd03d8a9774df4d3ba99997943187
Author: Yuri Shkuro <yurishkuro@users.noreply.github.com>
Date:   Tue Sep 10 04:29:30 2024 -0300

    Support default values and erorrs for env var expansion (#10907)
    
    #### Description
    Support shell-style default value and error message for env var
    expansion.
    ```
    // A default value for unset variable can be provided after :- suffix, for example:
    // `env:NAME_OF_ENVIRONMENT_VARIABLE:-default_value`
    ```
    
    #### Link to tracking issue
    Fixes #5228
    
    #### Testing
    Unit tests
    
    #### Documentation
    * [x] Provider Go docs
    * [ ] Probably needs some other docs changes?
    
    ---------
    
    Signed-off-by: Yuri Shkuro <github@ysh.us>
