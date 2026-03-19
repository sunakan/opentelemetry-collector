commit 9ca2c4221d7f98d5bcafc06c49d9f102797eaa91
Author: Martin Hickey <martin.hickey@ie.ibm.com>
Date:   Tue Apr 5 16:04:16 2022 +0100

    [ci] Cross build for  architectures (#5142)
    
    * [ci] Do cross architecture build of collector
    
    This job will help to see if any issues introduced to cross binary builds,
    when a commit is pushed.
    
    Signed-off-by: Martin Hickey <martin.hickey@ie.ibm.com>
    
    * Sync cross build list with opentelemetry-collector-releases
    
    Update following review comment:
    https://github.com/open-telemetry/opentelemetry-collector/pull/5142#discussion_r842541349
    
    Signed-off-by: Martin Hickey <martin.hickey@ie.ibm.com>
    
    * Disable darwin 386 build
    
    Go 1.15 dropped support for 32-bit binaries on macOS:
    https://go.dev/doc/go1.15
    
    Signed-off-by: Martin Hickey <martin.hickey@ie.ibm.com>
