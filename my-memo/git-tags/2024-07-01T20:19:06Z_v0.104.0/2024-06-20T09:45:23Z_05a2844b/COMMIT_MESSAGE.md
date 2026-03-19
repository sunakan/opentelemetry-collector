commit 05a2844bdb4f4483efed9eca9c3d6e54c859ebaa
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Thu Jun 20 04:45:23 2024 -0500

    Docs - Update contrib release step 1 (#10439)
    
    When I performed this step yesterday, I found that it was necessary to
    update the builder configs first, otherwise `make update-otel` would
    fail. This PR just updates the order of operations to match what worked
    for me.
