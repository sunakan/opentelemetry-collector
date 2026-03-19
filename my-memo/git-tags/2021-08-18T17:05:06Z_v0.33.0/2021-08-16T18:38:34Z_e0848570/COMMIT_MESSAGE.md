commit e08485709e7fe740886950dfbfceb874864bb95c
Author: alrex <aboten@lightstep.com>
Date:   Mon Aug 16 11:38:34 2021 -0700

    convert incoming labels to attributes (#3805)
    
    - don't modify labels, only add attributes
    - dont do anything if both labels and attributes are present
