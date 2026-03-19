commit 72aa6578c371fdb4c98f40748b47f3f7e2044340
Author: Paulo Janotti <paulo@omnition.io>
Date:   Wed Oct 31 11:20:44 2018 -0700

    Remove extra functions and improve JSON check in tests (#148)
    
    These changes are a follow up to comments in a previous PR. It changes
    the normalization process to compare JSON strings and remove some
    extra functions by replacing them with an if/else statement and local
    variables.
