commit 2e6b5825fc85d85a9fa3a69806e6e8af62cccbd3
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Jan 30 09:27:17 2019 -0800

    Add zipkinv1 thrift 01 (#350)
    
    * Add support to zipkin V1 thrift
    
    * Revert go.mod and go.sum
    
    * PR Feedback
    
    Main change: specialized functions to convert numerical binary annotations.
    
    * Remove no more spans sentinel error
    
    * Use slices instead of indexer function
