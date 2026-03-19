commit 806a2b72a0dc217f1752d71bbac2aff0b1df958b
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Mon Jun 21 06:34:13 2021 -0400

    [receiver/zipkin] Remove unused locking (#3463)
    
    The lock wasn't called from more than one location.
    
    Relates #3041
