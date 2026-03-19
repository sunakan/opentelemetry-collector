commit 68374a6ecd7986b0b5631143aa1f213266cfe3f4
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Tue Mar 22 07:38:48 2022 -0700

    [pdata] Change outcome of misuse of oneof collection accessors. (#5034)
    
    Change misuse outcome of `pdata.AttributeMap.MapVal()` and `pdata.AttributeValueSlice.SliceVal()`
      function calls. In case of type mismatch, they now return an invalid zero-initialized instance
      instead of returning a valid detached collection.
