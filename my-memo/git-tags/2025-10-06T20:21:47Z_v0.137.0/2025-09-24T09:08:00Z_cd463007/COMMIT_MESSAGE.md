commit cd463007510fb032f50ffb026ce726752cf018d9
Author: Marin Atanasov Nikolov <dnaeon@gmail.com>
Date:   Wed Sep 24 12:08:00 2025 +0300

    internal/cmd/pdatagen: add support for specifying a work dir (#13890)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    This PR adds a new flag (`-C path`) to the `pdatagen` utility, which
    allows specifying the workdir for the tool.
    
    Currently `pdatagen` expects to find the respective files in`pdata`
    directory of the `$cwd`. When `pdatagen` is called outside of the
    `$repo_root` the tool fails, because it cannot find `pdata` and panics.
    
    This PR adds an optional `-C path` flag, which would allow `pdatagen` to
    use an alternative workdir, and also be able to be called outside of the
    `$repo_root` directory.
    
    See #13844 for more details about this PR and the proposed changes. The
    commit from this PR have been extracted from #13844 .
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    <!--Describe what testing was performed and which tests were added.-->
    #### Testing
    
    <!--Describe the documentation added.-->
    #### Documentation
    
    <!--Please delete paragraphs that you did not use before submitting.-->
