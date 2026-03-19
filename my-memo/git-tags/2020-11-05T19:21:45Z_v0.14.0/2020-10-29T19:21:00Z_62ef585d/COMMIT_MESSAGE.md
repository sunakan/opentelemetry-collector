commit 62ef585d50edd2ad9905d69393239dfb89634121
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Oct 29 12:21:00 2020 -0700

    Remove StringValue, do not return a pointer to the value in the map (#2021)
    
    This is important since we changed to use slice of values instead of slice of pointers.
    After that change we returned a pointer to the memory block to allow users to change the value
    of the returned Get or when ForEach, this has a problem if the user keeps a reference to
    the returned value by the Get call, then applies any mutation that may move the memory around
    Delete, Insert/Upsert the returned pointer may point to other block of memory (different
    value in the map) or to a block that is no longer part of the slice, if the slice has to be moved.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
