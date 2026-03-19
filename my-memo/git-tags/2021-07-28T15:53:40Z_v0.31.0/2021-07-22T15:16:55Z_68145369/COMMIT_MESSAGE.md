commit 681453691a2f6d578dbc4ed8d064ed3ec259bef8
Author: Jacob Marble <jacobmarble@gmail.com>
Date:   Thu Jul 22 08:16:55 2021 -0700

    pdata: add [Type]Slice.Sort(func) to sort slices (#3671)
    
    * pdata: add TypeSlice.Sort(func) to sort slices
    
    Comparing two generated slices can be tedious when the slices are not
    ordered, and order does not matter for the test.
    
    This change adds a .Sort(func(i, j int) bool) method to generated [Type]Slice. This is
    similar to method StringMap.Sort(), but takes a less function because
    the order may differ by context, where the sort order of a map is obvious (by key).
    
    * fix: improve TypeSlice.Sort(less) signature
    
    * fix: resolve goimports CI check
    
    * chore: make genpdata
