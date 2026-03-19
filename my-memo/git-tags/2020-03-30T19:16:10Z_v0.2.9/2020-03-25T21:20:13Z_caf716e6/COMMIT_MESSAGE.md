commit caf716e64e4d4dde0083fdf5ced7ae35e5df0da2
Author: Yusuke Tsutsumi <tsutsumi.yusuke@gmail.com>
Date:   Wed Mar 25 14:20:13 2020 -0700

    Make prometheus reciever config loading strict (#697)
    
    Fixes #583
    
    Using strict umarshalling ensures eliminates common mistakes
    such as adding a key intended for the prometheus reciever itself
    into the prometheus subconfiguration.
