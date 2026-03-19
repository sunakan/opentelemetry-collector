commit 46ec077efa6b4a6686001bbcd53c76060b8cfc70
Author: chappie <6537530+chapmanc@users.noreply.github.com>
Date:   Thu Mar 30 15:02:23 2023 -0700

    [chore] Add omitempty for marshalling of logexporter (#7447)
    
    Add omitempty to the LogLevel and Verbosity fields so that marshalling them drop deprecated fields
    
    We are importing the logexporter to build our config but leaving the loglevel empty is not removing it from the marshalling since it doesn't have omitempty. Viceversa since the code only allows either LogLevel of Verbosity it makes sense to also omitempty Verbosity as well.
    
    The default values should handle cases where users don't specify these values. Once LogLevel is fully removed the Verbosity omitempty could be removed if so desired.
