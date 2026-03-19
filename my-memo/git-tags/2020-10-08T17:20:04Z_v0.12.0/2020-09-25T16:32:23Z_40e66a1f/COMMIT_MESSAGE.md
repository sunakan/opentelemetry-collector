commit 40e66a1f293c0b8480166d1b1cdf1cd96eaa6f6d
Author: Ben Keith <benkeith@splunk.com>
Date:   Fri Sep 25 12:32:23 2020 -0400

    Correctness Tests: Extend Timeout for Item Count Check (#1860)
    
    This will hopefully fix #1671. The output of the failed tests indicates
    that the received items eventually does equal the number of sent items
    but several seconds after the condition timed out.
