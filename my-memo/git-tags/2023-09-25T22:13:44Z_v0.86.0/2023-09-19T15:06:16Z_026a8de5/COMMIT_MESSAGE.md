commit 026a8de592eee659a4da7c797b75e71c2c5fe7a2
Author: Alex Boten <aboten@lightstep.com>
Date:   Tue Sep 19 08:06:16 2023 -0700

    [chore] update debug exporter koanf dep (#8484)
    
    Ensures the exporter doesn't depend on koanf v1.5 which causes all sorts
    of tidy nightmares.
    
    Signed-off-by: Alex Boten <aboten@lightstep.com>
