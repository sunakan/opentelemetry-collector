commit 89e13a1d94c230cd1552d5a73e6730dace710921
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Jul 7 14:32:52 2023 -0400

    [pdata] Fix Map.EnsureCapacity bug when the Map is not empty (#8040)
    
    EnsureCapacity was incorrectly clearing the Map when increasing the
    capacity. It will now correctly preserve existing elements.
    
    ---------
    
    Co-authored-by: Alex Boten <alex@boten.ca>
