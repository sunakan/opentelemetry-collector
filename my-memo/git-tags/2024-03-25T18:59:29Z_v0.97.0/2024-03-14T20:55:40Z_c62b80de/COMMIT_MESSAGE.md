commit c62b80de7e3d21e2fd6f10729ca605d058f4b14d
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Thu Mar 14 13:55:40 2024 -0700

    [chore] Remove the top level error if it indicates an empty name (#9763)
    
    This is a split of #9750 that tries to work around mapstructure, which
    wraps an error around a decoding error.
    
    In the case when an error is returned from a top level construct, we get
    a not so helpful message that says:
    ```
    error decoding '': error running encode hook: marshaling error
    ```
    
    With this change, the error is unwrapped, giving the following string
    representation:
    ```
    error running encode hook: marshaling error
    ```
    
    Because #9750 enforces going through mapstructure, it would change
    errors returned with this not-so-helpful preamble. Adding this removes
    the problem.
