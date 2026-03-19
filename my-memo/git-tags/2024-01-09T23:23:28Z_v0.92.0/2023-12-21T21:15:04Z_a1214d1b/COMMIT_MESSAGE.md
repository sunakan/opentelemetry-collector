commit a1214d1bce0240c16c3fd18d5c2a6166116a75c6
Author: Alex Boten <aboten@lightstep.com>
Date:   Thu Dec 21 13:15:04 2023 -0800

    [chore] when adding new module, use the version from main (#9171)
    
    This will make updating core from contrib much easier, otherwise we need
    to add replace statements everywhere in contrib.
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
