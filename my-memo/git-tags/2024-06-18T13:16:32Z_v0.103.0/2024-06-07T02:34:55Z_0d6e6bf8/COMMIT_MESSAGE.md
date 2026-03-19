commit 0d6e6bf8643cf7b88b37aa84aa62b2b3fbd44e51
Author: Antoine Toulme <antoine@lunar-ocean.com>
Date:   Thu Jun 6 19:34:55 2024 -0700

    [filter] unexport CombinedFilter (#10348)
    
    #### Description
    Unexport CombinedFilter, it should not be exported as it implements
    Filter.
