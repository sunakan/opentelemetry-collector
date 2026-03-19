commit 971c1046d59ad3357baf5ebc68bf37d74d704ff5
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Jul 3 11:48:53 2019 -0700

    Fix flaky TestCreateTraceExporter (#106)
    
    * Fix flaky TestCreateTraceExporter
    
    The ocagent Stop method takes into account the state of its connection to report error or not. The test is about creating and stopping the exporter so standing up a receiver ensures that ocagent stops happens cleanly.
    
    * Fix import section
