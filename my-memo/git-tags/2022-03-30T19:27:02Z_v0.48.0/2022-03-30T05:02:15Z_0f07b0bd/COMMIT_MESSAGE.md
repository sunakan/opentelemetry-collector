commit 0f07b0bd64d185d2277880c9db621b9db7dfe942
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Mar 29 22:02:15 2022 -0700

    fix bug with nil Sum (#5115)
    
    A bug was caught in the prometheus tests in the contrib repository where a histogram datapoint that contained a nil sum was copied into a new datapoint, resulting in the sum being initialized to 0.
    
    Added a test to validate the issue is fixed. I will add another issue to add this test to the generated tests for future use.
