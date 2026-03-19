commit 0f5d764c255eb70bc4ccdaa4438c01d5cfcd89ed
Author: Kennedy Ekanem <60167999+KenEkanem@users.noreply.github.com>
Date:   Wed Apr 9 10:54:45 2025 +0100

    [chore] Added a workflow to lint YAML files using actionlint (#12721)
    
    #### Description
    
    This pull request builds on the work done in #11493
    This PR introduces Actionlint as part of the project to enable linting
    of GitHub Workflow files. The changes ensure that Actionlint is
    installed locally within the project and is automatically run during
    pull requests to enforce consistency and best practices for workflow
    files.
    
    - Added a `actionlint` target to the Makefile for running Actionlint on
    workflow files.
    - Added actionlint configuration to `.github/actionlint.yaml`
    - update `internal/tools/go.mod` and `internal/tools/go.sum`
    - Ignored some shellcheck errors (with comments) since shellcheck isn't
    always right.
    #### Link to tracking issue
    https://github.com/open-telemetry/opentelemetry-collector/issues/9676
    
    #### Fixes
    - Addresses potential linting errors in workflow files after changes are
    made.
    
    #### Testing
    - The workflow has been tested to ensure the changes resolve identified
    issues and maintain functionality.
    - Verified that `make actionlint` runs correctly using the local binary.
    - Confirmed that the GitHub Actions workflow triggers automatically when
    relevant files are changed in a pull request.
    - Tested for proper error handling and feedback during linting failures.
    
    #### Documentation
    No new documentation added, as this change is self-explanatory within
    the context of CI.
    
    ---------
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
