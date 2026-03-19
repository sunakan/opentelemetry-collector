commit 1159fda4f536e3e7f8a767ff65ccd3c0b54b6e28
Author: Damien Mathieu <42@dmathieu.com>
Date:   Tue May 21 17:33:43 2024 +0200

    Add stringSlice and int64Slice to pcommon, and let tests handle non-number slices (#10148)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This adds a string slice to pcommon, that will be used by the profiles
    pdata.
    
    #### Link to tracking issue
    
    Part of #10109.
    
    #### Testing
    
    This is unit-tested.
    
    cc @mx-psi
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
