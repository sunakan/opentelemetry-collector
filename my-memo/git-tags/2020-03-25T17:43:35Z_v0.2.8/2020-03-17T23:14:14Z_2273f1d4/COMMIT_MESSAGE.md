commit 2273f1d4922ba083bd7ec2c589aa97ece751d37a
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Mar 17 19:14:14 2020 -0400

    Eliminate unnecessary V2 suffixes from function names (#644)
    
    Certain functions had V2 suffixes where it was necessary to have one.
    Even without a sufix they have different signature than equally-named
    old functions and thus the compiler can clearly distinguish between
    structs which implement the old of V2 interfaces.
    
    Removing the suffixes results in cleaner and more readable code.
    Some type names still have to use V2 suffix for now otherwise the
    names would conflict with existing old type names.
    
    Thanks, Jay for the hint.
