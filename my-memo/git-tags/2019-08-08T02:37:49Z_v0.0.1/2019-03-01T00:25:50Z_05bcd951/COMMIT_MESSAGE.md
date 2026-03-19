commit 05bcd951ef999bb05cee34291bf634ed86175698
Author: Bogdan Drutu <bdrutu@google.com>
Date:   Thu Feb 28 16:25:50 2019 -0800

    For receivers and exporters record number of received and dropped spans. (#442)
    
    * For receivers and exporters record number of received and dropped spans.
    
    * Shorter tag names, unify tags between metrics/trace.
    
    * Record when errors, add TODOs for better handling errors.
