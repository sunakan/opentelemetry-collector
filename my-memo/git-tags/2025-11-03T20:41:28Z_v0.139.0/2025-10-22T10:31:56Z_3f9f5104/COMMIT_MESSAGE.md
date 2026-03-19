commit 3f9f5104b6c3bdd4d440b94c410c56c0ad8e49e0
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed Oct 22 12:31:56 2025 +0200

    pprofile: introduce SetStack helper method (#14007)
    
    This introduces the `SetStack` helper method for pprofile, as we already
    have `SetFunction`, `SetMapping`, `SetString`, ...
    
    This is needed to help with setting up merging of profiles.
    https://github.com/open-telemetry/opentelemetry-collector/issues/13106
    
    ---------
    
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
