commit 0e8f4d97428a2d27237ba22a67c032963290d7f5
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Dec 17 20:32:09 2019 -0500

    Cleanup go.mod of Testbed (#471)
    
    1. Run go mod tidy.
    
    2. Removed the unnecessary reference to commit for
       github.com/open-telemetry/opentelemetry-collector dependency
       since we are using the current (latest) version via "replace"
       directive anyway.
    
    3. Change resource limit to make sure the test passes on Travis CI.
