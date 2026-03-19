commit 256c7c3536b45b92029d4308ee9aaf7f4119a929
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Mon Apr 22 03:23:21 2024 -0400

    [cmd/builder] Allow configuring confmap providers (#9513)
    
    **Description:**
    
    Allow configuring confmap providers in the builder's config. If the
    field isn't set, the default set of providers is used.
    
    **Link to tracking Issue:**
    
    Resolves
    https://github.com/open-telemetry/opentelemetry-collector/issues/4759.
    
    **Testing:**
    
    Extended unit tests.
    
    **Documentation:**
    
    Updated the readme to include the new options in the example manifest
    file.
    
    cc @mx-psi
    
    ---------
    
    Co-authored-by: Evan Bradley <evan-bradley@users.noreply.github.com>
    Co-authored-by: Pablo Baeyens <pbaeyens31+github@gmail.com>
