commit 085db598033cb5c774dcebfca2c679b590528580
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Thu Nov 21 23:03:07 2024 +0100

    [chore] Use pseudo-versions to require `authtest` (#11724)
    
    #### Description
    Now that #11705 has been merged, splitting the `extension/auth/authtest`
    package into a separate module, this PR updates imports of the new
    module to an externally resolvable pseudo-version based on the merge
    commit (f2e05b5). (See #11668 for context on why this two-step process
    is necessary.)
    
    #### Link to tracking issue
    Resolves #11465
