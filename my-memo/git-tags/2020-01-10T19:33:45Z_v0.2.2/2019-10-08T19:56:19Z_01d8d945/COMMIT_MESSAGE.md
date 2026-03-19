commit 01d8d945b642cb9fe8c255a01b7e7f857aff074d
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Oct 8 15:56:19 2019 -0400

    Add Shutdown() function to processors (#379)
    
    Shutdown() method is added so that we can implement proper
    pipeline flushing during collector shutdown. This will be done
    in a future PR.
