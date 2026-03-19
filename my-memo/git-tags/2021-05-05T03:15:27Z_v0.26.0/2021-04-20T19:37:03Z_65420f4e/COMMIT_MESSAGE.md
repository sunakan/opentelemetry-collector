commit 65420f4ee3b637f3bc68336a95ec7071dc5a644a
Author: Daniil Rutskiy <dstdfx@gmail.com>
Date:   Tue Apr 20 22:37:03 2021 +0300

    Fix jaeger receiver to honor TLS config (#2866)
    
    * Fix jaeger receiver HTTP to honor TLS config
    
    Add missing TLSConfig into jaeger reciever's configuration.
    
    Create TLS listener if TLS config is passed.
    
    Signed-off-by: Daniil Rutskiy <dstdfx@gmail.com>
    
    * Update CHANGELOG.md
    
    Signed-off-by: Daniil Rutskiy <dstdfx@gmail.com>
    
    * Use confighttp.HTTPServerSettings in receiver's configuration
    
    Signed-off-by: Daniil Rutskiy <dstdfx@gmail.com>
    
    * Fix unittest
    
    Signed-off-by: Daniil Rutskiy <dstdfx@gmail.com>
    
    * Update CHANGELOG.md
    
    Signed-off-by: Daniil Rutskiy <dstdfx@gmail.com>
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
