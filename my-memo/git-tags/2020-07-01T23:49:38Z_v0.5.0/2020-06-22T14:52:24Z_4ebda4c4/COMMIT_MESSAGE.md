commit 4ebda4c42e4e7e2b67b91f114a857210f669a977
Author: Kevin Brockhoff <kbrockhoff@codekaizen.org>
Date:   Mon Jun 22 09:52:24 2020 -0500

    Adjusted test signatures to support tests in opentelemetry-collector-contrib (#1151)
    
    Adjusted scenario test function signatures so TestResultsSummary always gets passed in. This enables scenario functions currently reused in opentelemetry-collector-contrib to work correctly with TestResultsSummary instances created in that project.
