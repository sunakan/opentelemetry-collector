commit 96b226a3190bd9c62d6876c5e61c031eed4511d2
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Jan 20 15:43:33 2021 -0800

    Determine the version using git describe (#2388)
    
    `v0.18.0-16-g4721f834` - the current head of my current branch is based on v0.18.0, but since it has a few commits on top of that, describe has added the number of additional commits ("16") and an abbreviated object name for the commit itself ("4721f834") at the end.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
