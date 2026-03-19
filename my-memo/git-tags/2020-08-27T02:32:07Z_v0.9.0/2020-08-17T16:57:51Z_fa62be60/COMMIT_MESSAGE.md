commit fa62be6031a646830a71fa005c6b1bfb964f483b
Author: Dominik Rosiek <58699848+sumo-drosiek@users.noreply.github.com>
Date:   Mon Aug 17 18:57:51 2020 +0200

    Fix multiple exporters panic (#1563)
    
    While using more than one exporter the panic runtime exception was fired
    because the array allocated for exporters was as twice as big as it should
    
    Signed-off-by: Dominik Rosiek <drosiek@sumologic.com>
