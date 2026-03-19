commit 5334b3a8ff0825671a88b3c08d0378c3be159706
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Mar 11 16:21:34 2020 -0700

    Change metric internal to use pimpl (#624)
    
    There are some important advantages to use pimpl:
    
    -  Consistency at the data API, all objects are simple wrappers to the underlying data,
     some may have an internal representation as well.
    
    - Avoids implementations mistakes like foo.getBar().setBaz() it is guaranteed to be
     reflected in the foo instance - this can be achieved as well with pointers but mixing
     pointers vs non-pointers may cause bugs.
    
    - We have the same amount of allocations, every time when we used an object by
     pointer we now have an internal pointer allocated.
    
    -  In the future we can optimize the structs to directly modify the marshaled proto,
     and in that case using struct values (like now) will avoid unnecessary allocations
     for every object pointer that we had before.
    
    - Cleaner separation between the orig data and the internal representations.
