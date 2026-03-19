commit 3d77741171f20eef4912386b77a983f1d80745d3
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Mon Jul 13 16:29:51 2020 -0400

    Add parallelism to load generator (#1336)
    
    * Add parallelism to load generator
    
    This adds the ability for the load generator to send in parallel to increase
    output rate.
    
    * remove options args
