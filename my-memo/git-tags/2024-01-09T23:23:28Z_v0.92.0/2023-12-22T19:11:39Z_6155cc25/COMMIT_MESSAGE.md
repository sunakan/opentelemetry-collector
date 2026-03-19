commit 6155cc25ddaad253abcced4fcd8108d1be98e9c1
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Fri Dec 22 11:11:39 2023 -0800

    Make the option `WithErrorUnused` enabled by default when unmarshaling configuration (#9154)
    
    **Description:**
    Make the option `WithErrorUnused` enabled by default when unmarshaling
    configuration
    The option `WithErrorUnused` is now enabled by default, and a new option
    `WithIgnoreUnused` is introduced to ignore
    errors about unused fields.
    
    **Link to tracking Issue:**
    This relates to #7102 to some extent.
    
    **Testing:**
    N/A
    
    **Documentation:**
    N/A
