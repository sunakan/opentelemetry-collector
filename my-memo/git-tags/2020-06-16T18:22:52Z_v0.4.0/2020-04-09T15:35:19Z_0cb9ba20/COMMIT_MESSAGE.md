commit 0cb9ba20d67cae57f3a378fab1d73f890f6018d9
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Apr 9 08:35:19 2020 -0700

    Fix attributes/string maps to deal with nil values in the original data (#813)
    
    Caveat: This PR does not fix this when iterating, because we probably going to re-write that part.
