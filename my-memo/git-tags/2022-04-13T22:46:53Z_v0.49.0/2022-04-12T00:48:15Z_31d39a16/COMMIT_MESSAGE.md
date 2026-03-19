commit 31d39a169405ef1f31f2469f990caddf09d6e5a6
Author: Alex Boten <aboten@lightstep.com>
Date:   Mon Apr 11 17:48:15 2022 -0700

    [receiver/otlp] fix otlp <0.15.0 receiver bug (#5189)
    
    * [receiver/otlp] fix otlp <0.15.0 receiver bug
    
    The codepath through the OTLP receiver for gRPC was not translating the `InstrumentationLibrary*` to `Scope*`.
    
    * update changelog
    
    * add unit tests
    
    * cleanup fake server name
