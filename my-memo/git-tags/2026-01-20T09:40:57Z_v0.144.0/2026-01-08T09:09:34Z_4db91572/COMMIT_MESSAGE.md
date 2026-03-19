commit 4db91572129c14907ca5d939bcf9114629b85ce7
Author: 蔡秀吉 <84045975+thc1006@users.noreply.github.com>
Date:   Thu Jan 8 17:09:34 2026 +0800

    [mdatagen] Add optional display_name field to metadata.yaml (#14115)
    
    ## Description
    
    This PR adds an optional `display_name` field to metadata.yaml for
    human-readable component names, as requested in #14114.
    
    ## Changes
    
    - Added `display_name` field to metadata-schema.yaml
    - Updated Metadata struct to include DisplayName field
    - Implemented automatic capitalization of type field when display_name
    not provided
    - Modified readme.md.tmpl to generate README titles from display_name
    - Fixed unused import issue in config_test.go.tmpl
    - Added test cases for display_name handling
    - Regenerated internal test code and README files
    
    ## Implementation
    
    Following the implementation guide from @mx-psi:
    
    1. Added the field to the Metadata struct
    2. Added title generation section to readme.md.tmpl template
    3. Added comprehensive tests covering both explicit and default display
    names
    4. Verified functionality with OTLP receiver (tested locally)
    
    ## Behavior
    
    - When `display_name` is set in metadata.yaml, it will be used as the
    README title
    - When not set, the component type will be automatically capitalized
    (e.g., "otlp" becomes "Otlp")
    - Fully backward compatible - existing components without display_name
    continue to work
    
    ## Testing
    
    - Unit tests added for display_name loading
    - Default value generation tested
    - Generated test files verified
    - CI checks passing (gotidy, misspell, multimod-verify, crosslink)
    
    Fixes #14114
    
    Co-authored-by: SteveYi <steveyiyo@steveyi.net>
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
