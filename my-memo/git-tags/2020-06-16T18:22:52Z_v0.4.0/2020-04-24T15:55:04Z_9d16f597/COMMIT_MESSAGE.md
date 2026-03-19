commit 9d16f5971ef950b554d12db1533202e33f5b93c2
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Fri Apr 24 11:55:04 2020 -0400

    Declare component Type as a type alias (#860)
    
    We previously used string in the codebase to represent component type
    (as it is known to factories and referred to in the config).
    
    Now we have configmodels.Type alias that provides stronger compile-time
    type checks.
    
    This is a breaking change for components but fixing the components is easy.
    
    Resolves: https://github.com/open-telemetry/opentelemetry-collector/issues/762
