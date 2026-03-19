commit 129508320c5a0cc7d499954fe7eaf526a00bd754
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Tue Oct 1 11:34:39 2024 -0400

    [chore][graph] Separate node types (#11321)
    
    Having spent some time on #11311, I think it may be time to start
    refactoring this codebase into a more maintainable state. This PR just
    moves the various types of nodes into separate files, which I think is a
    bit more readable when considering changes.
