commit 1c20608d6acd3be434aff162b41d7d1ffb80a63a
Author: SamerJ <samerj1997@gmail.com>
Date:   Thu Aug 22 22:44:53 2024 +0300

    [cmd/mdatagen] Fixed bug in component_test.go.tmpl (#10882)
    
    When SkipLifecycle & SkipShutdown are set to true, the generated file
    will have an unused import `confmaptest`
    
    #### Description
    The Metadata Generator had a bug described above, With this change, that
    issue has been addressed.
    
    #### Link to tracking issue
    Fixes #10866
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
