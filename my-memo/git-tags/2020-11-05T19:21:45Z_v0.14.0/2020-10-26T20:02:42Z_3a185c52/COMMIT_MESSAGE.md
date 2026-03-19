commit 3a185c527210bb121bdcbccc86469d0694355eba
Author: Gregor Zeitlinger <gregor.zeitlinger@zalando.de>
Date:   Mon Oct 26 21:02:42 2020 +0100

    Log Support in Attribute Processor (2/2)  (#1934)
    
    This complements the trace span support already present.
    
    It shares the same config struct to maintain backwards-compatibility with spans in the cleanest way possible.
