commit 4f3bb2c88d38b1af99555c5413b9d0d235efe062
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Nov 16 16:13:24 2018 -0800

    Add processor queue (#197)
    
    * Start adding pipeline to collector
    
    This is the basis to do the work for actually implementing OC collector
    in the short run. At first enable receivers:
    
    1. OC Receiver
    2. Jaeger
    3. Zipkin
    
    The queue processor is added but not connected to exporters by default,
    although there are options to do so.
    
    As previously indicated before there is some duplication of code
    with the agent, this should be reduced as we implement the interfaces and
    project coalesce around certain patterns.
    
    The queue is missing its metrics and those will be added soon.
