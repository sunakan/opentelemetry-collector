commit b08c6943bced2a9a56817b5b8c3ff692b0e0987b
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Nov 11 09:12:53 2020 -0800

    Optimize copyto/resize to keep capacity (#2064)
    
    Optimizations:
    * For `CopyTo` ensures that if spaces enough in the slice (check for capacity not for length) a new slice is not allocated.
    * For `Resize` if not enough capacity, allocate the right slice from the beginning instead of keep calling append which may do more allocations.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
