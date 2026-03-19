commit c7697795a0c3a9e7d10bad1f68ba42b83eadb5a7
Author: Matthew Ho <5099946+mcmho@users.noreply.github.com>
Date:   Mon Jul 25 09:02:19 2022 -0700

    Add support to handle 402, 413, 414, 431 http error code as permanent errors in OTLP exporter #5674 (#5685)
    
    * Add support to handle 402 and 413 http error code in Otlp exporter #5674
     - added StatusRequestEntityTooLarge (413) and StatusPaymentRequired (402) as failure permanent
    
    * Add support to handle 402 and 413 http error code in Otlp exporter #5674
     - added unit tests
    
    * Add support to handle 402 and 413 http error code in Otlp exporter #5674
     - fixed code review comment
    
    * Add support to handle 402 and 413 http error code in Otlp exporter #5674
     - added an entry in CHANGELOG.md
    
    * Update CHANGELOG.md
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    * Add support to handle 402, 413, 414, 431 http error code as permanent errors in OTLP exporter #5674
     - added 414 and 431 as permanent errors
    
    * Add support to handle 402, 413, 414, 431 http error code as permanent errors in OTLP exporter #5674
     - change ifs to a switch statement
    
    * Add support to handle 402, 413, 414, 431 http error code as permanent errors in OTLP exporter #5674
     - fixed according to code review
    
    * Add support to handle 402, 413, 414, 431 http error code as permanent errors in OTLP exporter #5674
     - fixed build-and-test  golangci-lint run
    
    * Creates a signed commit
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
