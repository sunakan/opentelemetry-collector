commit 03c0f1e50fdc40f2b7fa135412666770a74a6017
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Aug 22 14:06:33 2022 -0700

    Added MarshalerSizer Interface to facilitate creation of Sizer implementations (#5929) (#5931)
    
    * Added NewProtoSizer to instantiate Sizer implementations
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Updated changelog with PR number
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Refactored to create a MarshalSizer interface that is returned by NewProtoMarshaller
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Updated NewProtoMarshaler comments to inidicate return interface
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    * Corrected interface name
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    
    Signed-off-by: Corbin Phelps <corbin.phelps@bluemedora.com>
    Co-authored-by: Corbin Phelps <corbin.phelps@bluemedora.com>
