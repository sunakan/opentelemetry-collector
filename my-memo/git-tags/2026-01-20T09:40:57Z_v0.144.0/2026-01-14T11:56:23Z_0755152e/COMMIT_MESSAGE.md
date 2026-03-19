commit 0755152e21d3d228af112d6984ec365e950f4e85
Author: SACHIN KUMAR <118827645+sAchin-680@users.noreply.github.com>
Date:   Wed Jan 14 17:26:23 2026 +0530

    feat(mdatagen): add automatic feature gate documentation generation (#14130)
    
    #### Description
    
    Implements automatic documentation generation for component feature
    gates via mdatagen.
    
    Component authors can now declare feature gates in `metadata.yaml`, and
    mdatagen will automatically generate standardized markdown documentation
    including gate IDs, stages, descriptions, version information, and
    reference links.
    
    **Key Changes:**
    - Extended `metadata-schema.yaml` with `feature_gates` section
    - Added `FeatureGate` types with validation (required fields, valid
    stages, version format)
    - Created documentation template rendering feature gates as markdown
    table
    - Integrated into existing documentation generation pipeline
    - Added test coverage and usage documentation
    
    #### Link to tracking issue
    ~~Fixes~~ (edit by @mx-psi) Updates #14067
    
    #### Testing
    
    - All 282 tests passing
    - Added `TestRunContents/feature_gates.yaml` test case
    - Validated documentation generation and error handling
    - Lint checks passing
    
    #### Documentation
    
    - Added "Feature Gates Documentation" section to
    `cmd/mdatagen/README.md` with usage examples
    - Generated example visible in
    `cmd/mdatagen/internal/testdata/documentation.md`
    
    ---------
    
    Signed-off-by: SACHIN <sachin@SACHINs-MacBook-Pro.local>
    Signed-off-by: SACHIN KUMAR <mrmister680@gmail.com>
    Signed-off-by: sAchin-680 <mrmister680@gmail.com>
