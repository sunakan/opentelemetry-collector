commit 6e5beaf43b325e63ec6f1e864d9746a0d051cc35
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Thu Aug 19 10:43:46 2021 -0700

    Remove unnecessary Session, one per ConfigSource anyway (#3797)
    
    This PR makes the ConfigSource equivalent with the Session, and
    relies on the fact that when created ConfigSource does what
    NewSession was doing.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
