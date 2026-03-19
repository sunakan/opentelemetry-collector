commit e9ce4c95984a8a51460ce6fb7649b25d95388cbd
Author: EdgeN8v <ckx19921555595@gmail.com>
Date:   Tue Jan 27 00:52:05 2026 +0800

    fix: gracefully handle process metrics registration failure on unsupported OSes (#14319)
    
    ## Description
    This PR addresses the crash issue reported in #14307 where the collector
    fails to start on unsupported operating systems (e.g., AIX) due to
    `RegisterProcessMetrics` returning an error.
    
    Instead of failing the service initialization, this change logs a
    warning and allows the collector to continue starting, ensuring that
    core functionality remains available even if process metrics cannot be
    collected.
    
    ## Link to Issue
    Fixes #14307
    
    ## Type of change
    - [x] Bug fix (non-breaking change which fixes an issue)
    
    ---------
    
    Co-authored-by: Damien Mathieu <42@dmathieu.com>
    Co-authored-by: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
