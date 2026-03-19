commit 511f0464b63061829ac8b32388143801b739976f
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Wed Aug 6 12:10:54 2025 -0400

    [chore][confmap] Move functionality to the internal package (#13555)
    
    <!--Ex. Fixing a bug - Describe the bug and how this fixes the issue.
    Ex. Adding a feature - Explain what this achieves.-->
    #### Description
    
    Move substantial amounts of confmap's functionality to the internal
    package. This allows us to share the functionality with xconfmap and
    therefore add experimental functionality to confmap without risking
    breaking changes.
    
    I'm not a huge fan of the added indirection this introduces, but I think
    this is a fairly standard pattern, is fairly straightforward to trace
    from the top-level package down (e.g. confmap.Conf -> internal.Conf),
    and is probably the simplest way to accomplish this.
    
    <!-- Issue number if applicable -->
    #### Link to tracking issue
    
    Likely required for
    https://github.com/open-telemetry/opentelemetry-collector/issues/13421
