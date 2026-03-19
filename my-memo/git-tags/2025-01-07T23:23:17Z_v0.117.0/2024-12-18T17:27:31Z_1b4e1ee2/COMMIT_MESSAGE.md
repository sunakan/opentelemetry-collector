commit 1b4e1ee29fcfe9dd2a8c3260233dd8b70bfec9af
Author: Ankit Patel <8731662+ankitpatel96@users.noreply.github.com>
Date:   Wed Dec 18 12:27:31 2024 -0500

    [chore] Use gotestsum wrapper for go tests (#11946)
    
    **Description:**
    
    Use
    [gotestyourself/gotestsum](https://github.com/gotestyourself/gotestsum?rgh-link-date=2024-02-09T12%3A20%3A03Z)
    for running tests.
    This is following contrib's lead - they implemented this in this
    [PR](https://github.com/open-telemetry/opentelemetry-collector-contrib/pull/31163).
    
    Gotestsum is a lot more readable and user friendly than go test - the
    output format is nicer and the test output is more parseable. We could
    also use [rerun on
    failed](https://github.com/gotestyourself/gotestsum#re-running-failed-tests)
    or some of their other features!
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
