commit b1115288df63f2d1f57a943e31a98a3cf011e701
Author: Alex Boten <223565+codeboten@users.noreply.github.com>
Date:   Tue May 28 09:07:28 2024 -0700

    [chore]fix semconv script (#10241)
    
    The automation script that runs on a cron to auto-generate PRs for new
    semconv updates has been failing since it was created. This PR fixes a
    couple of issues w/ the workflow that were preventing it from working.
    
    ---------
    
    Signed-off-by: Alex Boten <223565+codeboten@users.noreply.github.com>
