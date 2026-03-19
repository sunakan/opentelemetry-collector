commit bdf63b77e33af2be3bc65e891c379f3a303f6e46
Author: Gabriel Aszalos <gabriel.aszalos@gmail.com>
Date:   Tue Jan 31 21:32:57 2023 +0200

    Revert "Revert "Fix: Force usage of case-sensitive keys in configurations (#6876)" (#6988)" (#7021)
    
    * Revert "Revert "Fix: Force usage of case-sensitive keys in configurations (#6876)" (#6988)"
    
    This reverts commit 80cabdd33c50eaf386293f90fd8ac57cb3a10dc9.
    
    Closes #7002
    
    * confmap: Remove case-insensitive statement in IsSet
