commit 7c82446d279bfd0cdea84e73ca163f25ee1f8ef0
Author: Yang Song <songy23@users.noreply.github.com>
Date:   Wed Jul 17 15:14:31 2019 -0700

    Clean up stale code in receiver/vmmetrics (#161)
    
    Old viper code is removed because it is no longer needed with the new factory/config approach.
    Receiver will be loaded through config.go instead of viper.
