commit d668e74423872db5280f9772c6708fc6d2181ac6
Author: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
Date:   Wed Feb 12 12:33:57 2025 +0100

    [chore] add automation for codeowner tooling (#11739)
    
    This PR copies over automation from the collector-contrib repo and
    slightly adjusts it where needed.
    The PR includes 3 new workflows:
    - add-labels: enables users to add labels to issues by commenting
    `/label <the-label>` (although github org and other permissions apply)
    - ping-codeowners-issues: ping codeowners of a component if the label
    for that component was added to an issue
    - ping-codeowners-on-new-issue: search the issue text for components and
    add labels accordingly, then ping code owners
    
    
    Fixes #11562
    
    ### Tests (done on my personal fork)
    #### Adding/removing labels via comment
    https://github.com/mowies/opentelemetry-collector/issues/6
    
    #### Pinging codeowners on new issues
    https://github.com/mowies/opentelemetry-collector/issues/12
    
    #### Pinging codeowners when component label is added to issue
    https://github.com/mowies/opentelemetry-collector/issues/11
    
    #### Adding codeowners to new PRs
    only visible in workflow logs because other user is not a collaborator
    of the repo, but the user would have been added
    
    https://github.com/mowies/opentelemetry-collector/actions/runs/13266017136/job/37033580832
    
    #### Pinging codeowners when component label is added to PR
    only visible in workflow logs because other user is not a collaborator
    of the repo, but the user would have been pinged
    
    https://github.com/mowies/opentelemetry-collector/actions/runs/13264177723/job/37027389440?pr=13
    
    ---------
    
    Signed-off-by: Moritz Wiesinger <moritz.wiesinger@dynatrace.com>
