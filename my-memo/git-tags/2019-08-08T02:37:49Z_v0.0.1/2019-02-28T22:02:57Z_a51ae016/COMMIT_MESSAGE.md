commit a51ae0169cad59348008dc8a0b9568fce2187c93
Author: Bogdan Drutu <bdrutu@google.com>
Date:   Thu Feb 28 14:02:57 2019 -0800

    Move debug processor to exporters, because no next. (#443)
    
    * Move debug processor to exporters, because no next.
    
    * Remove another hardcoded debug exporter.
    
    * Add tests for ExportFormat.
    
    * Renmae debug to logging.
    
    * Renmae New[Trace|Metrics]DataExporter to New[Trace|Metrics]Exporter.
