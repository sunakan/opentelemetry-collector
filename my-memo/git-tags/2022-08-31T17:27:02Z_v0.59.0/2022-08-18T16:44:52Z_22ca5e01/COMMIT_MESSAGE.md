commit 22ca5e01fffaa0ee6b657e8da996f2485242074c
Author: Corbin Phelps <corbin.phelps@bluemedora.com>
Date:   Thu Aug 18 12:44:52 2022 -0400

    Added MarshalerSizer Interface to facilitate creation of Sizer implementations (#5929)
    
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
