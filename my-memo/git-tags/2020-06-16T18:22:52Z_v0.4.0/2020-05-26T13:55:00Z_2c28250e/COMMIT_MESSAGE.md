commit 2c28250e9f440aeb85b74d0c76563f54e327b56a
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Tue May 26 09:55:00 2020 -0400

    change k8s.io/client-go version to sha1 (#1013)
    
    This was removed before but found its way back in. I'm hoping keeping it
    included with // indirect but changing it to pin to sha1 will prevent it from
    getting clobbered again. Added note explaining why it's pinned the way it is.
