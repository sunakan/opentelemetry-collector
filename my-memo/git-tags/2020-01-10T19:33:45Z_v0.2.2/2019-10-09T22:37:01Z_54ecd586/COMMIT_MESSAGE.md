commit 54ecd586914d10d57bb1f25428dc5cdff5ba514b
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Oct 9 15:37:01 2019 -0700

    Remove bzr from list of required tools (#390)
    
    This tool is not required anymore, used go mod tidy on testbed to remove old packages that required it from go.mod. Opportunistically removed the "--unbuffered" flag from runtests.sh that doesn't work on mac.
