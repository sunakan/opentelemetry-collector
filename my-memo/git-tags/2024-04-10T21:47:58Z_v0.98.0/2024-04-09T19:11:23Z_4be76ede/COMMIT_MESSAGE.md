commit 4be76ededd9f7cefd73333fd9e31df9c0389705a
Author: Curtis Robert <crobert@splunk.com>
Date:   Tue Apr 9 12:11:23 2024 -0700

    [chore][CI/CD] Fix failing codecov uploads (#9930)
    
    The `build-and-test` workflow has been failing consistently the last few
    days on the upload coverage step. The reason is outlined in
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/32259.
    
    Contrib issue, but same underlying cause:
    https://github.com/open-telemetry/opentelemetry-collector-contrib/issues/32259
    
    None yet, the CI/CD tests on this PR should be successful if this works.
