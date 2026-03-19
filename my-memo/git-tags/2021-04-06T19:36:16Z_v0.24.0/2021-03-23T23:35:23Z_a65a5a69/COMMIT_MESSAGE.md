commit a65a5a697891032818f274c7979c6ba7c1d8de4c
Author: Anthony Mirabella <a9@aneurysm9.com>
Date:   Tue Mar 23 19:35:23 2021 -0400

    Tidy up `consumer/consumererror` package. (#2768)
    
    * Tidy up `consumer/consumererror` package.
    
    * Updated docblocks for grammar and consistency
    * Added `IsPartial()` predicate to match `IsPermanent()`
    * Ensured tests for `PartialError` test the public interface
    
    Remove `PartialError` and replace with individual signal error types
    
    Refactor consumererror signal extraction to simplify exporterhelper request interface
    
    * Rename consumererror signal error types to align with rest of codebase
    
    * Rename `onPartialError` to `onError` in `exporterhelper.request` interface
    
    * Provide conversion methods to consumererror signal error types.
    
    This moves the accessors for signal data to methods on the individual error types
    and provides As<Signal>() package functions that behave as targeted versions of
    the errors.As() function.
    
    * Avoid unnecessary allocation, fixup docs
