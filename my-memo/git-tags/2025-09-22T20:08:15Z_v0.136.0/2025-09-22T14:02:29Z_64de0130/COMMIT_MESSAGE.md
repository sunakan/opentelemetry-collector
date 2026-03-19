commit 64de0130239bf5525886bf092affd39cfaf210cf
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Mon Sep 22 16:02:29 2025 +0200

    [chore] Try fixing merge freeze CI again (#13876)
    
    #### Description
    
    Alternative to #13875 and half-revert of #13841: use author login to
    find the otelbot in PR CI (which historically seems to work), and use
    author email to find it in merge queue CI (as of yet untested).
    
    [Example of the new condition not working in PR
    CI](https://github.com/open-telemetry/opentelemetry-collector/pull/13874)
