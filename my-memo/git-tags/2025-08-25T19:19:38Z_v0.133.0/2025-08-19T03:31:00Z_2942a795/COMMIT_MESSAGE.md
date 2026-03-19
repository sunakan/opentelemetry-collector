commit 2942a795fcb16d0b41b0ff42b6a4117cd8c7a70c
Author: Antoine Toulme <atoulme@splunk.com>
Date:   Mon Aug 18 20:31:00 2025 -0700

    Revert "[chore] remove all ignore statements for actionlint" (#13660)
    
    Reverts open-telemetry/opentelemetry-collector#13658
    
    See #13659 - the PR was not actually exercising the action.
