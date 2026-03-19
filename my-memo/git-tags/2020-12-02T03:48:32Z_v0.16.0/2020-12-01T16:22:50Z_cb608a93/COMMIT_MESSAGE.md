commit cb608a930b17f2cf30161a13f20e18f40457322c
Author: Joe Elliott <number101010@gmail.com>
Date:   Tue Dec 1 11:22:50 2020 -0500

    Fix --set flag (#2162)
    
    Add the --set parameter in a way that works with `{}` being used in configs.
    
    Fixes #1907
    
    **Testing:**
    The original tests were added along with the addition of the following:
    
    ```
    extensions:
      health_check: {}
    ```
    
    This failed the previous tests, but now passes.
