commit 12b0369f16c0f7c5e45832dc05bfc2960975cd50
Author: Cijo Thomas <cijo.thomas@gmail.com>
Date:   Thu Jan 9 21:13:13 2025 +0000

    [DebugExporter] Add EventName from LogRecord to output (#11967)
    
    #### Description
    1. Adds event name from LogRecord to debug exporter.
    2. Also modified the example config file to include logs too. (It only
    had traces/metrics). Not really required for this change, but hope that
    is okay to club into same PR!
    
    #### Link to tracking issue
    Fixes #11966
    
    #### Testing
    Manually tested with Otel client that exported a LogRecord with event
    name and without event name.
    
    (1st time contributor here, still learning the process.)
    
    ---------
    
    Co-authored-by: Trask Stalnaker <trask.stalnaker@gmail.com>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
