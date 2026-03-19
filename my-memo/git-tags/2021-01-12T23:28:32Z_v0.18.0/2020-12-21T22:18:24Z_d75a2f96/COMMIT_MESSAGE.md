commit d75a2f967267da1aeddf7d62b427cf73329436eb
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Mon Dec 21 17:18:24 2020 -0500

    [receiver/fluentforward] Fix string conversions (#2314)
    
    * [receiver/fluentforward] Fix string conversions
    
    - Sometimes strings are received as []uint8
    - fluentd uses "message", fluent-bit uses "log" for the log message
    
    * lint fix
