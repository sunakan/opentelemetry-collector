commit 4b5f09607438fed6779717c448d86179a42760a0
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Thu Jul 18 16:30:11 2024 -0500

    [chore] Cleanup logger setup for component kinds (#10665)
    
    I noticed some inconsistency in the way we set up loggers for the
    different component kinds. This change just makes it uniform for all
    types and I think a little more readable.
