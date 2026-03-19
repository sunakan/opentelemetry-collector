commit bb9b8b42842fcd9826389742b5dbeadcec1607ef
Author: Paulo Janotti <paulo@omnition.io>
Date:   Mon Jul 22 13:30:11 2019 -0700

    Add queued-retry and add-attributes to perf tests (#183)
    
    * Use batcher and queued-retry on perf tests
    
    The typical usage is expected to have both the batcher and the queued-retry so changing the perf tests to use them. Also adding a test with addattributesprocessor that requires a differenc configuration file.
    
    * Merge corrections
    
    * Fix configuration, do not batch for now
    
    * Adjust memory for TestNoBackend10kSPS
