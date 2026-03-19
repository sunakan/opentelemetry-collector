commit b3c781b90e398c90e616400eac3bab221aed2eeb
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Fri Jun 21 05:32:21 2024 -0500

    [chore] Remove telemetry from graph initialization (#10446)
    
    This PR refactors the service graph initialization so that the graph can
    be assembled without the intention to start it.
    1. Do not save telemetry on the graph. The only use of this was for
    reporting component status. Instead, pass in a reporter when starting or
    stopping. Correspondingly, add an internal `statustest` package to make
    it easy to pass in a status reporter in tests.
    2. Decouple graph building from extension building. There isn't any
    direct relationship so these things should be separated.
