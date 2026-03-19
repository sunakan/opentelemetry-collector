commit b647d6ad111b0970b275b06d3bd84a8d30ed5165
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Dec 5 09:25:11 2018 -0800

    Enable queue processor (#254)
    
    * Enabling queued processor for jaeger
    
    Uses the processor queue to send data to Jaeger Collectors.
    This allows deeper retry queues than what can be done directly with
    the Jaeger exporter and also allows better handling of service information
    for Jaeger backends.
    
    * Merge fix and minor corrections
    
    * PR Feedback: add queue info about defaults to README.md
    
    * Fix one default that was incorrect.
    
    * Update lint (this was needed since we are using latest lint and it ends updating go.mod and go.sum)
