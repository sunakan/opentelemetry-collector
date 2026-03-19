commit 5bdfd09446462f5aecd366dd2ab9461ad6ae6549
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Tue Oct 14 13:37:58 2025 +0200

    Add Unwrap method on tracer provider wrapper and use it in zpagesextension (#14006)
    
    #### Description
    
    This allows components to access SDK-specific `TracerProvider` methods
    (in `zpagesextension`'s case, `RegisterSpanProcessor`), without
    requiring `componentattribute` to have a dependency on the official SDK.
    
    This is an alternative proposal to #13947
    
    #### Link to tracking issue
    Updates #13842
    
    #### Testing
    Should be covered by `TestServiceTelemetryZPages`. (In fact the "missing
    coverage" should be covered by that test as well, but it's in another
    module.)
    
    ---------
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
