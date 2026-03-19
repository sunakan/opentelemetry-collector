commit c71f5bbe77492603f52a19a857d5db3de3bce2d3
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Mon May 3 17:30:37 2021 -0400

    Extract OTLP text logging from logging exporter (#3082)
    
    The plan is to eventually use this as an unmarshaller (#3044) but for now make
    it accessible from `internal/otlptext`.
