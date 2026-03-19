commit 0546fac6b540b6dc1af540ebe4fe1cddfe4daed8
Author: Min Xia <xiami@amazon.com>
Date:   Wed Jul 14 19:51:04 2021 +0000

    Add validation on ballast size between memorylimiter and ballastextension (#3532)
    
    * Add validation to make sure memorylimiter and ballastextension have the same setting on ballast size in config
    Add BallastSizePercentage support in memory_limiter processor config
    
    * Deprecate `ballast_size_mib` in memory limiter and use the ballast size set by `ballast extension`
