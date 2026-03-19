commit 2e07643fcfcd3505bb6e50a1939ff7476018966a
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Sat Jun 29 01:27:04 2019 +0530

    Added pkg directory to host importable packages (#69)
    
    Added a new pkg sub-directory that hosts code intended to be imported by
    3rd party packages.
    
    Packages with `internal` in their import path cannot be imported by
    other Go programs. This is enforced by the compiler. Some of the code
    currently hosted by the internal director needs to be made available to
    other programs so additional exporters, receivers and processors can be
    easily implemented independently.
