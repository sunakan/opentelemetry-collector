commit 62fc8f3f9d015622f7ee62ca9aaa5c61fac8bc7f
Author: Daniil Rutskiy <dstdfx@gmail.com>
Date:   Mon Mar 29 19:08:00 2021 +0300

    Use confignet.TCPAddr in extentions (#2829)
    
    * Use confignet.TCPAddr in extentions
    
    Change pprof and zpages extentions' configs to
    use confignet.TCPAddr struct instead of `Endpoint` string.
    
    Signed-off-by: Daniil Rutskiy <dstdfx@gmail.com>
    
    * Update CHANGELOG.md
    
    Signed-off-by: Daniil Rutskiy <dstdfx@gmail.com>
