commit 2cc9fd9a100a92042d47efbf12f5a7cdbf796e01
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Wed Apr 29 18:24:21 2020 -0400

    Use development logging when running a local build (#889)
    
    * Use development logging when running a local build
    
    The [zap development
    logger](https://godoc.org/go.uber.org/zap#NewDevelopmentConfig) provides nicer
    console output as well as a few other different defaults for development.
    
    To decide whether to use production or development it's checking if `Version`
    has been set at build time. If not it assumes it's development. It may be
    better not to conflate version number with build type in which case we could
    add a separate build type. But first I wanted to see if the general idea
    desirable.
    
    * add log profile flag
    
    * add build variable
