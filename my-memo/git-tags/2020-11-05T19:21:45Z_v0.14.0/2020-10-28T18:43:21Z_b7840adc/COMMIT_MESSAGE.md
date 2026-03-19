commit b7840adc8073093adbc17634f6ce8c39750acf69
Author: Ben Keith <benkeith@splunk.com>
Date:   Wed Oct 28 14:43:21 2020 -0400

    fluentbit extension: Extend Test Timeout (#2025)
    
    This should handle the cases where the Golang fork/exec 'text file busy'
    error happens.  It should generally not happen twice in a row.
