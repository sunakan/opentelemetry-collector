commit f3b5b457bd1c14946eebe7e4c851d8e08b6e9549
Author: Pavol Loffay <ploffay@redhat.com>
Date:   Wed Sep 2 20:18:04 2020 +0200

    Fix Kafka receiver closing ready channel multiple times (#1696)
    
    Avoid closing ready channel multiple times.
    
    Fixes #1692
