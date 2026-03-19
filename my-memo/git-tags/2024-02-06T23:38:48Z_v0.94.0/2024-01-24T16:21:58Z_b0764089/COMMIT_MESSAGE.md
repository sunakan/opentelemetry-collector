commit b07640894e6c5312b029fbd33d2091a392a7e621
Author: Alex Boten <aboten@lightstep.com>
Date:   Wed Jan 24 08:21:58 2024 -0800

    [service] fix opencensus bridge in periodic readers (#9361)
    
    The periodic metric readers were not connecting to the opencensus bridge
    prior to this change, meaning anyone trying to emit metrics via the
    console or OTLP from components that used opencensus were failing to do
    so.
    
    ---------
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
