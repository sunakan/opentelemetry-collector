commit be92a1f20412dd7c26364c5ac832324c063b7719
Author: Damien Mathieu <42@dmathieu.com>
Date:   Wed Jan 7 17:49:39 2026 +0100

    chore: split service metric views into an internal package (#14392)
    
    Those metric views are getting quite frequent updates, and start
    becoming less and less trivial to have within a single file.
    This splits them into their own internal submodule, so we can start
    splitting them into their own submethods as needed later on.
