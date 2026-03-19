commit 4b4e557b86cbe752811bfc2265d3e1a9298d1913
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Sep 15 18:06:38 2025 +0200

    Use email to exclude otelbot from merge freeze (#13841)
    
    #### Description
    This PR changes the criterion which excludes otelbot's "Prepare release"
    PRs from the merge freeze they cause, so that we check the email address
    instead of the name of the committer. The address was taken from
    [otelbot's last commit on its latest
    PR](https://github.com/open-telemetry/opentelemetry-collector/commit/8e24523e66c3acfeb18dd3086f7f198f3953bae5.patch).
    
    #### Link to tracking issue
    Updates #13789
    
    Hopefully fixes it, but let's wait until next release to see if it
    worked.
