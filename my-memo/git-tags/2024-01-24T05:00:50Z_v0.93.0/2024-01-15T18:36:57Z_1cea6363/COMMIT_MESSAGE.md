commit 1cea6363f60421d4faed7469ccdcae25f82231b2
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Mon Jan 15 19:36:57 2024 +0100

    [configopaque] Implement fmt.GoStringer interface for String (#9271)
    
    **Description:** Follow up to #9214.
    
    To make sure the output when using `%#v` is redacted, we must also
    implement the `fmt.GoStringer` interface.
    
    **Link to tracking Issue:** Relates to #9213
    
    **Testing:** Adds some tests with YAML and JSON as well as more thorough
    testing of all `fmt` verbs
    
    **Documentation:** Clarify that printing this is also redacted.
