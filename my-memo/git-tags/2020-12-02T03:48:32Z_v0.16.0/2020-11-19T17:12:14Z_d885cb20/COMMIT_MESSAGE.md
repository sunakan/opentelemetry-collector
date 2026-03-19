commit d885cb20e11c5b8c9dafa3251b2591cc8f1f8c82
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Nov 19 12:12:14 2020 -0500

    Move tools to internal, create module to avoid dependency problems (#2131)
    
    * Move tools to internal, create module to avoid dependency problems
    
    This way we avoid dependency conflicts between tools and main codebase.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Add dependabot entry for the new module
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Fix build
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Add makefile in internal/tools
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    * Re-enable coverage
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
