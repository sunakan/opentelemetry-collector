commit 8ea43ddb536f417d8fcfa987f57b57b2c65dab91
Author: Steve Flanders <steve@sflanders.net>
Date:   Mon Dec 10 13:52:18 2018 -0800

    Address syntax errors in configuration + refactor (#255)
    
    * Address a couple syntax errors in configuration
    
    This change was primarily driven by the following syntax errors:
    
    * enable_traces in Stackdriver needs to be enable_tracing
    * jaeger receiver needs to be jaeger:
    
    As part of this change, refactor and cleanup up readme a bit. Also
    ensure consistent formatting in all sections.
    
    * Further refactor
    
    Make README more generic showing the most common options. Provide links
    to additional information.
    
    * Fix headers
    
    * Few other edits to README
    
    * Fix style issue
    
    * Update architecture diagram
    
    * Change ocagent to opencensus
    
    * Add deployment models
