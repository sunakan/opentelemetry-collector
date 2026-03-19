commit cc471de9bd0bb351e7cf0559cdeaa559d0ea14c0
Author: Alex Boten <aboten@lightstep.com>
Date:   Fri Apr 14 15:00:50 2023 -0700

    move prometheus init code (#7534)
    
    This is moving the code to initialize the prometheus endpoint into a separate func. This will allow us to run it multiple times if a user configures multiple prometheus endpoints via telemetry configuration. This will also allow us to move that code inside a switch to only enable it if users configure prometheus export.
    
    Fixes https://github.com/open-telemetry/opentelemetry-collector/issues/7533
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
