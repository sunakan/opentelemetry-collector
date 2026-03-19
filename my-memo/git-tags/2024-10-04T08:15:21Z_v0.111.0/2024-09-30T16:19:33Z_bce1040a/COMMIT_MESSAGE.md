commit bce1040a631c1415e1e325c51ebdb8db3689029c
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Sep 30 09:19:33 2024 -0700

    Deprecate funcs that repeate receiver in name (#11287)
    
    This change makes the names to be more "Go" friendly. Also it will not
    become an issue that types will try to implement different Factory types
    (receiver,processor) because that is forbidden because of our design.
    This also makes the names consistent with connector.Factory.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
