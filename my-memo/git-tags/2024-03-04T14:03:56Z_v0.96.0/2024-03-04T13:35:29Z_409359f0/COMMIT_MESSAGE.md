commit 409359f0f578355e98ba16c0c56c55aca7f08a4a
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Mar 4 14:35:29 2024 +0100

    [chore] Fix prepare-release.yml (#9675)
    
    **Description:**
    
    Fixes
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/8139621131/workflow
    
    ```
    The workflow is not valid. .github/workflows/prepare-release.yml (Line: 54, Col: 9):
    Job 'prepare-release' depends on unknown job 'validate-version'.
    ```
    
    #9409 introduced some errors because the workflow is not tested on PRs,
    #9668 partly fixed them and I mistakenly believed Github would notify me
    of further errors in the workflow, the same way it did with this one,
    but it did not.
