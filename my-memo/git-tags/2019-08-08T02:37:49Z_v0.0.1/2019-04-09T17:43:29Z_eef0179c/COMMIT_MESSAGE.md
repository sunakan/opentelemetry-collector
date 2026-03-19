commit eef0179c88837e393e217a40e836b8f8edc52d9f
Author: rghetia <rghetia@yahoo.com>
Date:   Tue Apr 9 10:43:29 2019 -0700

    [WIP]fix aggregation type for per process stats and system stats. (#520)
    
    * fix aggregation type for per process stats and system stats.
    Also recording delta for sum aggregation by preserving previous values.
    
    * revert system stats to sum but record difference.
    
    * save prev value first time as well.
    also change process cpu seconds to float64
    
    * fix fmt.
