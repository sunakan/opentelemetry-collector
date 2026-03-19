commit 091e19dd26971dd68a45c8801591cac771f38eb2
Author: Owais Lone <owais@users.noreply.github.com>
Date:   Wed Jul 24 06:08:04 2019 +0530

    Moved some components out of internal (#191)
    
    This commit moves two processors and an error helper outside the
    internal package so they can be imported and used by OT service
    derivatives.
