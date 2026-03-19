commit f763d8b6b5b8ab9e3bed5dd1208548b22c51e8d7
Author: Jaana Dogan <jbd@amazon.com>
Date:   Tue Jun 15 05:20:33 2021 -0700

    Return concrete error type (#3360)
    
    Go development practices favors returning concrete types over interfaces, so the users don't have to force cast the return value to the concrete type and the APIs self document the returned error type.
