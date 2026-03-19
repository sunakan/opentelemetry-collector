commit e73a9938f8b0cf7d3928c14fe0978c61cab17b28
Author: Nicolas <69248573+niwoerner@users.noreply.github.com>
Date:   Tue Nov 26 16:25:37 2024 +0100

    [chore] Run markdown link check if package.json changes (#11725)
    
    #### Description
    This PR will run the "markdown-link-check" tool if the package.json
    changes even if no markdown files were updated. This will help to
    confirm that "markdown-link-check" is still working as expected after a
    version update/pin.
    
    If 1+ *.md files gets changed AND the package.json gets updated, it will
    only check the updated files to keep the same behaviour as before.
    
    If only the package.json gets updated it will test all existing *.md
    files.
    
    #### Link to tracking issue
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/issues/11606
    
    #### Testing
    
    I tested/reproduced this manually:
    
    1. *.md file changes, but package.json not:
    https://github.com/niwoerner/opentelemetry-collector/actions/runs/11959750938
    2. *.md file and package.json changes:
    https://github.com/niwoerner/opentelemetry-collector/actions/runs/11959777300
    3. *.md file doesn't change but package.json:
    https://github.com/niwoerner/opentelemetry-collector/actions/runs/11959797335
