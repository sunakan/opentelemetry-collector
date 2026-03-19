commit 366bacfdb47805b9624e770334c5452e5b34b1a6
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Wed Sep 8 15:03:48 2021 -0400

    model/pdata: Change AttributeValue NULL->EMPTY (#3980)
    
    Signed-off-by: Anthony J Mirabella <a9@aneurysm9.com>
    
    **Description:** Takes the second alternative outlined in #3930.  Renames the `NULL` attribute value to `EMPTY` to maintain parity with other collection types that use `AppendEmpty()`.  Added `SetMapVal()` and `SetArrayVal()` to the `AttributeValue` type to simplify converting the entry to those types.  We can later add typed `Append*` methods on the `AnyValueArray` type if this indirection proves too cumbersome.
    
    **Link to tracking Issue:** https://github.com/open-telemetry/opentelemetry-collector/issues/3930
