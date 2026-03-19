commit d8ca639bfc3f1907fc44999800343e8b2a859d10
Author: Ben Keith <benkeith@splunk.com>
Date:   Wed Sep 30 12:51:01 2020 -0400

    Log Support in Attribute Processor (1/2) (#1783)
    
    This complements the trace span support already present.
    
    It shares the same config struct to maintain backwards-compatibility with spans in the cleanest way possible.
