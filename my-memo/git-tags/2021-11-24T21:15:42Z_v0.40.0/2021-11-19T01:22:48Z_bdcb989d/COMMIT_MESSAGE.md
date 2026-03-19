commit bdcb989da369fd2b06be71966dd6f3259aca7fdc
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Nov 18 17:22:48 2021 -0800

    `configgrpc`: Update `ToDialOptions` with settings (#4451)
    
    * `configgrpc`: Update `ToDialOptions` with settings
    
    Adding the ability to pass TelemetrySettings to ToDialOptions to configure underlying instrumentation library.
    
    Fixes #4424
    
    * update changelog
    
    * add telemetrysetting to exporter
