commit 1fada742275967c44c7c01445f097793b9d0caae
Author: Eddy Lin <edwali@amazon.com>
Date:   Mon Jun 14 11:46:53 2021 -0400

    Edit type/func documentation in the consumer package (#3269)
    
    * Edited grammar of pdata doc.go
    
    * Added missing word
    
    * Fixed typos in pdata/common.go
    
    * Added missing String method docs
    
    This fix makes the pdata folder consistent in documenting the String methods.
    
    * Fixed spacing in doc example
    
    * Fixed spacing issues in multiple examples
    
    This issue was causing many example snippets to show up incorrectly on the godoc
    
    * Fixed spacing issue on Range example
    
    * Fixed spacing in At example
    
    * Fixed more spacing errors in examples
    
    * Fixed error in ResourceMetrics header describing InstrumentationLibraryMetrics
    
    * Fixed another header referencing wrong method
    
    * Added documentation for pdata.Resource
    
    * Updated outdated links to Span OTLP definition
    
    * Cleaned up wording in SpanStatus doc
    
    * Fixed more spacing errors in examples
    
    * Fixed typos in type docs
    
    * Cleaned up formatting in consumererror
    
    * Cleaned up consumerhelper doc typos
    
    * Updated docs in consumertest
    
    - Fixed wrong description of NewErr
    - Added doc for Capabilities method
    
    * Update CHANGELOG.md
    
    * Fixed formatting errors in cmd/pdatagen
    
    Changing here will ensure that the changes to consumer/pdata/generated_* files will persist after running `go run cmd/pdatagen/main.go`.
    
    * Removed unused imports
    
    * Update CHANGELOG.md
    
    * Fixed generated code lint failures
    
    * Revert changes in pdatagen and pdata/generated
    
    * Update NewErr docstring
    
    For func defined in consumer/consumertest/err.go
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
    
    * Updated docstring for TraceState
    
    Renamed "message" to "string"
    
    Co-authored-by: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
