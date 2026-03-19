commit 1c3be5d9dbdd701de170eec9472396d5178f5a73
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Apr 4 14:01:12 2022 -0700

    Add Scheme to MapProvider interface (#5068)
    
    This is another required step in order to support configuring map providers via the Builder.
    
    Updates https://github.com/open-telemetry/opentelemetry-collector/issues/4759
    
    This is a breaking change, since adds a new func to an interface. It is hard to make this backwards compatible, and would like to move forward with this exception.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
    
    Co-authored-by: Alex Boten <aboten@lightstep.com>
