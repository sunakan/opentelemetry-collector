commit b13392bbbec39104679639f647574ecb2d6608ad
Author: Ben Keith <benkeith@splunk.com>
Date:   Wed Aug 26 10:46:46 2020 -0400

    Add Logs to the Testbed (#1407)
    
    This adds a simple 10k logs per second performance test that currently
    passes with a fairly low bar.
    
    This also involves adding support for logs to the otlpreceiver since it
    is used to receive the logs by the mock backend.
    
    Also expanding the receiverhelper to supportlog receiver factories.
    
    Also make CircleCI have fluent-bit in the test environment.
