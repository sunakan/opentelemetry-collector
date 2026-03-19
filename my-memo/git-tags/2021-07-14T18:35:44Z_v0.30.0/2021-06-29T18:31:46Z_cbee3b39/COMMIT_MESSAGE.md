commit cbee3b39483cb116b4b663019c44a15cd61880aa
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Tue Jun 29 14:31:46 2021 -0400

    scraperhelper: fix case when returned pdata is empty (#3520)
    
    On error pdata.Metrics may not be initialized so guard against it. Update test
    to return uninitialized object on error.
