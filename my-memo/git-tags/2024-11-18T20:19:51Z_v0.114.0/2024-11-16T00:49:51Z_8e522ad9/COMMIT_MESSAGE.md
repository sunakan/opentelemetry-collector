commit 8e522ad950de6326a0841d7e1bef808bbc0d3537
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Fri Nov 15 16:49:51 2024 -0800

    Revert public API changes in #10931, preserve logic (#11415)
    
    This PR removes APIs that expose `configtelemetry.Level`. Internal
    functionality still uses the Level, but will be soon changed to use the
    new Instrument.Enabled.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
