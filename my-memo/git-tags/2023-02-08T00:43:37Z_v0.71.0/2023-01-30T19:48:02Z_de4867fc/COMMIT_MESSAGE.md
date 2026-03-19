commit de4867fc8a48f97d8fd22cc05950433fb3b9ccf0
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Jan 30 11:48:02 2023 -0800

    [pdata] Do not wrap orig fields when it's not required (#7081)
    
    This change simplifies the generated pdata code to not wrap orig fields in the internal package for structs that are not being used by other packages.
    
    The code generator is adjusted to generate wrapped or unwrapped code for only for structs that need it based on the package name. The only exception is `Slice` struct that was pulled from the generator because:
    - We don't have and don't expect to have any new slices that are used by other packages.
    - The `Slice` struct have two additional methods `AsRaw` and `FromRaw` that are not generated and defined in a separate file which is a bit confusing.
