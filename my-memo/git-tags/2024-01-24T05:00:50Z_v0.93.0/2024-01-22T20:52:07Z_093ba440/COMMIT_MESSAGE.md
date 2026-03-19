commit 093ba44039542463ced7963d3979c458683e426c
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Mon Jan 22 12:52:07 2024 -0800

    [chore] remove waits as start is now deterministic (#9330)
    
    **Description:**
    This PR removes 3 TODOs and time.Sleep statements as otlp receiver start
    is now deterministic.
    
    This change is similar to
    https://github.com/open-telemetry/opentelemetry-collector/pull/9121
    
    For good measure, I ran the tests 10,000 each (each test runs multiple
    sub-tests) and didn't have any failures.
