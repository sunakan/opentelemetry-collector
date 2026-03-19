commit de104da4f136c8798971d66eecdc60e0fb339743
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Nov 3 17:28:43 2020 -0500

    Update OTLP to 0.6.0 and use the new Span Status code (#2031)
    
    Contributes to https://github.com/open-telemetry/opentelemetry-collector/issues/1841
    
    - Implemented the backward compatibility logic for sending and receiving
      side for DeprecatedCode and Code fields according to OTLP spec.
    
    - Had to modify pdata generator to allow generating fields without setters.
      This is needed because the Status code field needs a custom setter logic
      that implements the DeprecatedCode vs Code handling.
    
    - Added tests that verify OTLP receiver behavior for Status Code/DeprecatedCode.
    
    - Added tests that verify sending/setting behavior for Status Code/DeprecatedCode
      for any component that uses pdata.Traces Status.SetCode().
    
    - Modified all non-OTLP trace receivers and exporters (Jaeger, Zipkin, OpenCensus) to use
      the new Status code.
    
    - Modified correctness tests to use the new status Code instead of DeprecatedCode.
