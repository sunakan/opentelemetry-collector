commit 65215264e8220557ff78328630c3f5dbc02492b3
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Feb 13 07:59:41 2019 -0800

    Add in-memory tail-sampling prototype (#372)
    
    * Add in-memory tail-sampling prototype
    
    This brings the tail-sampling prototype to the collector.
    
    Overview of this prototype at https://omnition.io/docs/opencensus-tail-based-sampling-demo
    Design at https://omnition.io/docs/opencensus-tail-based-sampling
    
    Goals for the prototype:
    * Allow early experimentation
    * Collect information to guide future design decisions
    
    Tail sampling is implemented as a SpanProcessor that holds traces in memory until the configured decision wait time is reached. Each trace is then evaluated against the configured sample policy and it is sampled or not. After the decision the trace still stays in memory for some time, so late arriving spans can be properly handled, either by discarding them, in case of not sampled traces, or forwarded to the proper exporters, if the trace was sampled.
    
    Clean-up and more tests
    
    Remove demo file
    
    * PR Feedback 00
    
    * Move tail sampling processor to its own package
