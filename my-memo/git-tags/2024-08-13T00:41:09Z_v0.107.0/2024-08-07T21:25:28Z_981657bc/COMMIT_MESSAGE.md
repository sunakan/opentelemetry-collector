commit 981657bc20a624ce2bef1688b2d68b67f5383f78
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Wed Aug 7 14:25:28 2024 -0700

    [chore] update workflow to add changelog before pushing (#10832)
    
    This prevents the workflow from trying to push to an existing branch
    which it doesn't have permissions to do.
    
    An example of the failure can be found here:
    https://github.com/open-telemetry/opentelemetry-collector/actions/runs/10291429328/job/28483659786
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
