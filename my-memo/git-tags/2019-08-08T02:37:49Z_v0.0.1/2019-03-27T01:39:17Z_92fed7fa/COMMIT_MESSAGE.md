commit 92fed7faa55a93d456f7f98171503ff1ef4f46f7
Author: Paulo Janotti <paulo@omnition.io>
Date:   Tue Mar 26 18:39:17 2019 -0700

    Make all receivers take "next" on creation (#477)
    
    * Make all receivers take "next" on creation
    
    This is required in order to move the code to use factories for the receivers. The "next" parameter will be passed to the factory and then to the receiver constructor, this way Start[Trace|Metrics]Reception doesn't need the next parameter anymore. Since typically the Start* methods launch goroutines took the opportunity to add a channel to report asynchronous errors.
    
    Opportunistic change: renamed WrapWithSpanSink and related variables.
    
    Remaing items from previous commit
    
    * Improve test coverage for zipkin-scribe
    
    Improving code coverage for zipkin-scribe that went a tad down with the initial PR.
    
    * Improve a little code coverage  zipkin receiver
    
    * Fix test broken during rebase
