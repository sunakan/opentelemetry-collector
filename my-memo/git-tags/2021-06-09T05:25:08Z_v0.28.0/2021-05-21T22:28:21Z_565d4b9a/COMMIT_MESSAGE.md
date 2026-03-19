commit 565d4b9aab1911be3541306dea8ad8b2d6813444
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Fri May 21 18:28:21 2021 -0400

    High level encode/decode APIs (#3244)
    
    * High level encode/decode APIs
    
    This provides the high level wrappers around encoding pdata to bytes and
    decoding bytes to pdata.
    
    Just adds pdata.Traces for now. Would like to find a way to do code generation
    since they're virtually identical for each telemetry type.
    
    * review updates
