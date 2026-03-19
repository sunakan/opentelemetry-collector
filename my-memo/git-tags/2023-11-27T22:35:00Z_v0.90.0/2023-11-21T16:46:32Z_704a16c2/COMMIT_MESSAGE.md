commit 704a16c2cd879ce1ff565aef992ddf1455cc38f9
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Nov 21 17:46:32 2023 +0100

    [pdata] Document that Marshalers/Unmarshalers use OTLP/JSON format explicitly (#8974)
    
    Explicitly documents that the `JSONMarshaler` and `JSONUnmarshaler` as
    conforming to the format in the OTLP/JSON specification.
    
    The intent is to be explicit that we follow this spec and that
    deviations (such as supporting snake case) are bugs that can be removed
    in a minor version update.
    
    **Link to tracking Issue:** Relates to #6287
